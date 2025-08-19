import 'package:streams_counter/data/repository/counter_stream_repository.dart';

class ResetCounterStream {
  final CounterStreamRepository repository;
  ResetCounterStream({required this.repository});

  Future<void> call() async {
    await repository.reset();
  }
}
