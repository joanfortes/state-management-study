import 'package:counter/data/repositories/counter_repository.dart';
import 'package:counter/data/repositories/counter_repository_impl.dart';
import 'package:counter/domain/entities/counter_entity.dart';
import 'package:counter/domain/usecases/decrement_counter.dart';
import 'package:counter/domain/usecases/increment_counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_providers.g.dart';

@riverpod
CounterRepository counterRepository(Ref ref) => CounterRepositoryImpl();

@riverpod
IncrementCounter incrementCounter(Ref ref) {
  final repository = ref.watch(counterRepositoryProvider);
  return IncrementCounter(counterRepository: repository);
}

@riverpod
DecrementCounter decrementCounter(Ref ref) {
  final repository = ref.watch(counterRepositoryProvider);
  return DecrementCounter(counterRepository: repository);
}

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  Future<Counter> build() async {
    return const Counter(value: 0);
  }

  Future<void> increment() async {
    state = const AsyncValue.loading();
    try {
      final currentCounter = state.value!;
      final incrementUseCase = ref.read(incrementCounterProvider);
      final newCounter = await incrementUseCase(currentCounter);
      state = AsyncValue.data(newCounter);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> decrement() async {
    state = const AsyncValue.loading();
    try {
      final currentCounter = state.value!;
      final decrementUseCase = ref.read(decrementCounterProvider);
      final newCounter = await decrementUseCase(currentCounter);
      state = AsyncValue.data(newCounter);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> reset() async {
    state = const AsyncValue.loading();
    try {
      await Future.delayed(const Duration(milliseconds: 100));
      state = const AsyncValue.data(Counter(value: 0));
    } catch (e, _) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
