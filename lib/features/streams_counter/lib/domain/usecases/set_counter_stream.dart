import 'package:streams_counter/data/repository/counter_stream_repository.dart';

class SetCounterStream {
  final CounterStreamRepository repository;
  SetCounterStream({required this.repository});

  Future<void> call(int value) async {
    await repository.setValue(value);
  }
}
