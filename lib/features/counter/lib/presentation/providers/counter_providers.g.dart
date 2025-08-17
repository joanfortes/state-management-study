// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterRepositoryHash() => r'c1047ff35c965d819bad3de327ccf28851d7105e';

/// See also [counterRepository].
@ProviderFor(counterRepository)
final counterRepositoryProvider =
    AutoDisposeProvider<CounterRepository>.internal(
  counterRepository,
  name: r'counterRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CounterRepositoryRef = AutoDisposeProviderRef<CounterRepository>;
String _$incrementCounterHash() => r'e35b4de6d53895fad39354c6cd378f756cb9b86c';

/// See also [incrementCounter].
@ProviderFor(incrementCounter)
final incrementCounterProvider = AutoDisposeProvider<IncrementCounter>.internal(
  incrementCounter,
  name: r'incrementCounterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$incrementCounterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IncrementCounterRef = AutoDisposeProviderRef<IncrementCounter>;
String _$decrementCounterHash() => r'61735c0ca76ef4c109fbcb330598b6741e7b5ef7';

/// See also [decrementCounter].
@ProviderFor(decrementCounter)
final decrementCounterProvider = AutoDisposeProvider<DecrementCounter>.internal(
  decrementCounter,
  name: r'decrementCounterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$decrementCounterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DecrementCounterRef = AutoDisposeProviderRef<DecrementCounter>;
String _$counterNotifierHash() => r'2dbdd808b744c298d5e671e04b38f50686ef6714';

/// See also [CounterNotifier].
@ProviderFor(CounterNotifier)
final counterNotifierProvider =
    AutoDisposeAsyncNotifierProvider<CounterNotifier, Counter>.internal(
  CounterNotifier.new,
  name: r'counterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CounterNotifier = AutoDisposeAsyncNotifier<Counter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
