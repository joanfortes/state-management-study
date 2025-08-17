import 'package:counter/data/repositories/counter_repository.dart';
import 'package:counter/domain/entities/counter_entity.dart';

class IncrementCounter {
  final CounterRepository counterRepository;

  IncrementCounter({required this.counterRepository});

  Future<Counter> call(Counter counter) async {
    return await counterRepository.incrementCounter(counter);
  }
}
