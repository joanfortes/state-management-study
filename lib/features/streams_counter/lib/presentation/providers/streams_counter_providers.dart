import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streams_counter/data/repository/counter_stream_repository.dart';
import 'package:streams_counter/data/repository/counter_stream_repository_impl.dart';
import 'package:streams_counter/domain/usecases/decrement_counter_stream.dart';
import 'package:streams_counter/domain/usecases/increment_counter_stream.dart';
import 'package:streams_counter/domain/usecases/reset_counter_stream.dart';
import 'package:streams_counter/domain/usecases/set_counter_stream.dart';

part 'streams_counter_providers.g.dart';

@riverpod
CounterStreamRepository counterStreamRepository(Ref ref) =>
    CounterStreamRepositoryImpl();

@riverpod
IncrementCounterStream incrementCounterStream(Ref ref) {
  final repository = ref.watch(counterStreamRepositoryProvider);
  return IncrementCounterStream(repository: repository);
}

@riverpod
DecrementCounterStream decrementCounterStream(Ref ref) {
  final repository = ref.watch(counterStreamRepositoryProvider);
  return DecrementCounterStream(repository: repository);
}

@riverpod
ResetCounterStream resetCounterStream(Ref ref) {
  final repository = ref.watch(counterStreamRepositoryProvider);
  return ResetCounterStream(repository: repository);
}

@riverpod
SetCounterStream setValueCounterStream(Ref ref) {
  final repository = ref.watch(counterStreamRepositoryProvider);
  return SetCounterStream(repository: repository);
}

@riverpod
Stream<int> counterStream(Ref ref) {
  final repository = ref.watch(counterStreamRepositoryProvider);
  return repository.counterStream;
}

@riverpod
Stream<List<int>> counterHistoryStream(Ref ref) {
  final repository = ref.watch(counterStreamRepositoryProvider);
  return repository.counterHistoryStream;
}

@riverpod
int currentCounterValue(Ref ref) {
  final repository = ref.watch(counterStreamRepositoryProvider);
  return repository.currentCounter;
}
