import 'package:counter/presentation/providers/counter_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterControls extends ConsumerWidget {
  const CounterControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterNotifier = ref.watch(counterNotifierProvider.notifier);
    final counterState = ref.watch(counterNotifierProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () => counterNotifier.increment(),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => counterNotifier.decrement(),
            )
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed:
              counterState.isLoading ? null : () => counterNotifier.reset(),
          child: const Text('Reset'),
        )
      ],
    );
  }
}
