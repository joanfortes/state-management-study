import 'package:streams_counter/data/repository/counter_stream_repository.dart';

class GetCounterStream {
  final CounterStreamRepository repository;
  GetCounterStream({required this.repository});

  Stream<int> call() {
    return repository.counterStream;
  }
}
