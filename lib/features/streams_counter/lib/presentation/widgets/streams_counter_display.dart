import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streams_counter/presentation/providers/streams_counter_providers.dart';

class StreamsCounterDisplay extends ConsumerWidget {
  const StreamsCounterDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterAsync = ref.watch(counterStreamProvider);

    return counterAsync.when(
      data: (value) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Text(
                  'Counter Value',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  value.toString(),
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        );
      },
      loading: () {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: const [
                Text(
                  'Counter Value',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        );
      },
      error: (e, _) => Text('Error: $e'),
    );
  }
}
