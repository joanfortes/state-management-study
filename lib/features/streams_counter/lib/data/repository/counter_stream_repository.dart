abstract class CounterStreamRepository {
  Stream<int> get counterStream;
  Stream<List<int>> get counterHistoryStream;
  Future<void> increment();
  Future<void> decrement();
  Future<void> reset();
  Future<void> setValue(int value);
  int get currentCounter;
  List<int> get counterHistory;
}
