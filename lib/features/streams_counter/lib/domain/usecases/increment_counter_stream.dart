import 'package:streams_counter/data/repository/counter_stream_repository.dart';

class IncrementCounterStream {
  final CounterStreamRepository repository;
  IncrementCounterStream({required this.repository});

  Future<void> call() async {
    await repository.increment();
  }
}
