import 'dart:convert';
import 'dart:io';

import 'package:deliveryboy/features/delivery_agent/domain/delivery_task.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deliveryboy/features/delivery_agent/infrastructure/live_task_service.dart';

void main() {
  final json = File('docs/sample_live_task.json').readAsStringSync();

  test('sample payload is a valid DeliveryTask', () {
    final task = DeliveryTask.fromJson(jsonDecode(json) as Map<String, dynamic>);
    expect(task.taskId, 'LIVE-1001');
  });

  test('extractTaskJson accepts raw JSON and base64url deep links', () {
    expect(extractTaskJson(json), json.trim());
    final link = 'deliveryboy://task?payload=${base64Url.encode(utf8.encode(json))}';
    expect(extractTaskJson(link), json);
  });

  test('extractTaskJson rejects other input', () {
    expect(extractTaskJson(''), isNull);
    expect(extractTaskJson('https://example.com/?payload=abc'), isNull);
    expect(extractTaskJson('deliveryboy://task'), isNull);
    expect(extractTaskJson('deliveryboy://task?payload=%%%'), isNull);
  });
}
