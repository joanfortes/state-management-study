class CounterStream {
  final int value;
  final List<int> history;

  const CounterStream({
    required this.value,
    required this.history,
  });

  CounterStream copyWith({
    int? value,
    List<int>? history,
  }) {
    return CounterStream(
      value: value ?? this.value,
      history: history ?? this.history,
    );
  }
}
