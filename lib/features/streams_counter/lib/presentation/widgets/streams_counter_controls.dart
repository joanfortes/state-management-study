import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streams_counter/presentation/providers/streams_counter_providers.dart';

class StreamsCounterControls extends ConsumerWidget {
  const StreamsCounterControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Counter Controls',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () =>
                      ref.read(incrementCounterStreamProvider).call(),
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () =>
                      ref.read(decrementCounterStreamProvider).call(),
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () => ref.read(resetCounterStreamProvider).call(),
                  child: const Text('Reset'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showSetValueDialog(context, ref),
              child: const Text('Set Value'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSetValueDialog(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Set Counter Value'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Enter value',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final value = int.tryParse(controller.text);
              if (value != null) {
                ref.read(setValueCounterStreamProvider).call(value);
                Navigator.pop(context);
              }
            },
            child: const Text('Set'),
          ),
        ],
      ),
    );
  }
}
