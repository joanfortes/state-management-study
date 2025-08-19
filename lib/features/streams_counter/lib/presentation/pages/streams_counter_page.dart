import 'package:flutter/material.dart';
import 'package:streams_counter/presentation/widgets/widgets.dart';

class CounterStreamPage extends StatelessWidget {
  static const String routeName = '/streams-counter';

  const CounterStreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Streams Counter'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            StreamsCounterDisplay(),
            SizedBox(height: 16),
            StreamsCounterControls(),
            SizedBox(height: 16),
            Expanded(child: StreamsCounterHistory()),
          ],
        ),
      ),
    );
  }
}
