import 'package:streams_counter/data/repository/counter_stream_repository.dart';

class DecrementCounterStream {
  final CounterStreamRepository repository;
  DecrementCounterStream({required this.repository});

  Future<void> call() async {
    await repository.decrement();
  }
}
