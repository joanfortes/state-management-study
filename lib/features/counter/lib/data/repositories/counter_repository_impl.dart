import 'package:counter/data/models/counter_model.dart';
import 'package:counter/data/repositories/counter_repository.dart';
import 'package:counter/domain/entities/counter_entity.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterModel _counter = CounterModel.initial();

  @override
  Future<Counter> getCounter() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _counter;
  }

  @override
  Future<Counter> incrementCounter(Counter counter) async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _counter.copyWith(value: counter.value + 1);
  }

  @override
  Future<Counter> decrementCounter(Counter counter) async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _counter.copyWith(value: counter.value - 1);
  }
}
