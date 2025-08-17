import 'package:counter/data/repositories/counter_repository.dart';
import 'package:counter/domain/entities/counter_entity.dart';

class DecrementCounter {
  final CounterRepository counterRepository;

  DecrementCounter({required this.counterRepository});

  Future<Counter> call(Counter counter) async {
    return await counterRepository.decrementCounter(counter);
  }
}
