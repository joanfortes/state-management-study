import 'package:counter/domain/entities/counter_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterDisplay extends ConsumerWidget {
  final Counter counter;
  const CounterDisplay({super.key, required this.counter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Counter Value:'),
        Text(
          counter.value.toString(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
