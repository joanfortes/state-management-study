import 'package:counter/presentation/providers/counter_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/widgets.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: counterState.when(
          data: (counter) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CounterDisplay(counter: counter),
              const SizedBox(height: 32),
              CounterControls(),
            ],
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Error: $error'),
              Text('Stack Trace: $stackTrace'),
              ElevatedButton(
                onPressed: () => ref.refresh(counterNotifierProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
