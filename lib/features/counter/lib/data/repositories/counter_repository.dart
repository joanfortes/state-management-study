import 'package:counter/domain/entities/counter_entity.dart';

abstract class CounterRepository {
  Future<Counter> getCounter();
  Future<Counter> incrementCounter(Counter counter);
  Future<Counter> decrementCounter(Counter counter);
}
