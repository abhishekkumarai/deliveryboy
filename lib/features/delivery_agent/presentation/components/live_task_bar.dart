import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/live_task_service.dart';
import '../../infrastructure/task_ingestion_service.dart';

/// Demo/Live switcher shown above the task header. Also confirms tasks that
/// arrive through the `deliveryboy://task?payload=...` deep link.
class LiveTaskBar extends ConsumerStatefulWidget {
  const LiveTaskBar({super.key});

  @override
  ConsumerState<LiveTaskBar> createState() => _LiveTaskBarState();
}

class _LiveTaskBarState extends ConsumerState<LiveTaskBar> {
  bool _dialogOpen = false;

  @override
  void initState() {
    super.initState();
    // A link that arrived before this screen was mounted (cold start).
    WidgetsBinding.instance.addPostFrameCallback((_) => _confirmPending());
  }

  Future<void> _confirmPending() async {
    final raw = ref.read(pendingLivePayloadProvider);
    if (raw == null || _dialogOpen || !mounted) return;
    ref.read(pendingLivePayloadProvider.notifier).state = null;

    _dialogOpen = true;
    final accept = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Load live delivery task?'),
        content: const Text(
          'Another app sent a delivery task. Loading it replaces the current task.',
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Ignore')),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('Load task')),
        ],
      ),
    );
    _dialogOpen = false;
    if (accept != true || !mounted) return;
    if (!activateLiveTask(ref, raw)) _showInvalid();
  }

  void _showInvalid() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('That payload is not a valid delivery task.')),
    );
  }

  Future<void> _pasteDialog() async {
    final controller = TextEditingController();
    String? error;
    final raw = await showDialog<String>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: const Text('Load live task'),
          content: SizedBox(
            width: 480,
            child: TextField(
              controller: controller,
              minLines: 6,
              maxLines: 12,
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              decoration: InputDecoration(
                hintText: 'Paste task JSON or a deliveryboy://task?payload=… link',
                errorText: error,
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
            FilledButton(
              onPressed: () {
                final json = extractTaskJson(controller.text);
                if (json == null) {
                  setState(() => error = 'Not task JSON or a deliveryboy://task link');
                } else {
                  Navigator.pop(ctx, json);
                }
              },
              child: const Text('Load'),
            ),
          ],
        ),
      ),
    );
    controller.dispose();
    if (raw == null || !mounted) return;
    if (!activateLiveTask(ref, raw)) _showInvalid();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<String?>(pendingLivePayloadProvider, (_, next) {
      if (next != null) _confirmPending();
    });

    final isLive = ref.watch(taskSourceProvider) == TaskSource.live;
    final task = ref.watch(activeDeliveryTaskControllerProvider);
    const liveColor = Color(0xFF047857);
    const demoColor = Color(0xFF64748B);
    final color = isLive ? liveColor : demoColor;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      color: color.withValues(alpha: 0.08),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              isLive ? 'LIVE' : 'DEMO',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              isLive && task != null ? 'from ${task.clientApp.appName}' : 'sample task',
              style: TextStyle(fontSize: 12, color: color),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (isLive)
            TextButton(
              onPressed: () => activateDemoTask(ref),
              child: const Text('Back to demo'),
            ),
          TextButton(onPressed: _pasteDialog, child: const Text('Load live task')),
        ],
      ),
    );
  }
}
