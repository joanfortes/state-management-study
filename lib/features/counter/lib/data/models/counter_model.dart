import 'package:counter/domain/entities/counter_entity.dart';

class CounterModel extends Counter {
  const CounterModel({required super.value});

  factory CounterModel.fromEntity(Counter counter) {
    return CounterModel(value: counter.value);
  }

  factory CounterModel.initial() {
    return const CounterModel(value: 0);
  }
}
