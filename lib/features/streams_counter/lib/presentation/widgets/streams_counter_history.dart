import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streams_counter/presentation/providers/streams_counter_providers.dart';

class StreamsCounterHistory extends ConsumerWidget {
  const StreamsCounterHistory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyStream = ref.watch(counterHistoryStreamProvider);

    return historyStream.when(
      data: (data) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Counter History',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final value = data[index];
                    final isLatest = index == data.length - 1;

                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: isLatest ? Colors.green : Colors.grey,
                        child: Text('${index + 1}'),
                      ),
                      title: Text('Value: $value'),
                      trailing: isLatest
                          ? const Icon(Icons.star, color: Colors.amber)
                          : null,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Counter History',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('1'),
                  ),
                  title: Text('Value: 0'),
                  trailing: const Icon(Icons.star, color: Colors.amber),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
