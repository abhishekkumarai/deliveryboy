import 'dart:async';
import 'dart:convert';

import 'package:app_links/app_links.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../domain/completion_payload.dart';
import 'task_ingestion_service.dart';

/// Deep link format: `deliveryboy://task?payload=<base64url(JSON)>`
/// (a raw URL-encoded JSON `payload` is accepted too).
const liveTaskScheme = 'deliveryboy';
const liveTaskHost = 'task';

enum TaskSource { demo, live }

final taskSourceProvider = StateProvider<TaskSource>((ref) => TaskSource.demo);

/// Raw task JSON received (deep link / paste) and waiting for the agent to
/// confirm it. The task screen consumes this, so a cold-start link survives
/// until the screen is mounted.
final pendingLivePayloadProvider = StateProvider<String?>((ref) => null);

/// Listens for `deliveryboy://task?...` links (cold start and while running).
final liveTaskDeepLinkProvider = Provider<void>((ref) {
  final appLinks = AppLinks();

  void handle(Uri uri) {
    final raw = extractTaskJson(uri.toString());
    if (raw != null) {
      ref.read(pendingLivePayloadProvider.notifier).state = raw;
    }
  }

  appLinks.getInitialLink().then((uri) {
    if (uri != null) handle(uri);
  }).catchError((_) {});
  final sub = appLinks.uriLinkStream.listen(handle, onError: (_) {});
  ref.onDispose(sub.cancel);
});

/// Accepts either a raw task JSON object or a `deliveryboy://task?payload=...`
/// link and returns the task JSON string, or null if it is neither.
String? extractTaskJson(String input) {
  final text = input.trim();
  if (text.isEmpty) return null;
  if (text.startsWith('{')) return text;

  final uri = Uri.tryParse(text);
  if (uri == null || uri.scheme != liveTaskScheme || uri.host != liveTaskHost) {
    return null;
  }
  final param = uri.queryParameters['payload'];
  if (param == null || param.isEmpty) return null;
  if (param.startsWith('{')) return param;
  try {
    return utf8.decode(base64Url.decode(base64Url.normalize(param)));
  } catch (_) {
    return null;
  }
}

/// Loads [rawJson] as the active task and flips the app into live mode.
bool activateLiveTask(WidgetRef ref, String rawJson) {
  final ok =
      ref.read(activeDeliveryTaskControllerProvider.notifier).ingestFromPayload(rawJson);
  if (ok) ref.read(taskSourceProvider.notifier).state = TaskSource.live;
  return ok;
}

void activateDemoTask(WidgetRef ref) {
  ref.read(activeDeliveryTaskControllerProvider.notifier).resetToDemo();
  ref.read(taskSourceProvider.notifier).state = TaskSource.demo;
}

class WebhookResult {
  const WebhookResult({
    required this.ok,
    required this.elapsedMs,
    this.statusCode,
    this.error,
  });

  final bool ok;
  final int elapsedMs;
  final int? statusCode;
  final String? error;
}

/// POSTs [payload] as JSON to the caller app's webhook. Only http(s) targets
/// are allowed, since the URL arrives inside an externally supplied payload.
Future<WebhookResult> postCompletionWebhook(
  String webhookUrl,
  CompletionPayload payload,
) async {
  final uri = Uri.tryParse(webhookUrl);
  if (uri == null || !(uri.scheme == 'https' || uri.scheme == 'http') || uri.host.isEmpty) {
    return const WebhookResult(ok: false, elapsedMs: 0, error: 'Invalid webhook URL');
  }
  final watch = Stopwatch()..start();
  try {
    final response = await Dio().postUri<void>(
      uri,
      data: jsonEncode(payload.toJson()),
      options: Options(
        contentType: Headers.jsonContentType,
        sendTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        validateStatus: (_) => true,
      ),
    );
    final code = response.statusCode ?? 0;
    return WebhookResult(
      ok: code >= 200 && code < 300,
      elapsedMs: watch.elapsedMilliseconds,
      statusCode: code,
      error: code >= 200 && code < 300 ? null : 'HTTP $code',
    );
  } on DioException catch (e) {
    return WebhookResult(
      ok: false,
      elapsedMs: watch.elapsedMilliseconds,
      error: e.message ?? e.type.name,
    );
  }
}

Future<bool> openReturnUrl(String? returnUrl) async {
  final uri = returnUrl == null ? null : Uri.tryParse(returnUrl);
  if (uri == null || !uri.hasScheme) return false;
  try {
    return await launchUrl(uri, mode: LaunchMode.externalApplication);
  } catch (_) {
    return false;
  }
}
