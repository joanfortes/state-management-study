import 'dart:async';

import 'package:streams_counter/data/repository/counter_stream_repository.dart';

class CounterStreamRepositoryImpl implements CounterStreamRepository {
  late final StreamController<int> _counterStreamController;
  late final StreamController<List<int>> _counterHistoryStreamController;

  int _currentCounter = 0;
  final List<int> _counterHistory = [0];

  late final Stream<int> _counterStream;
  late final Stream<List<int>> _counterHistoryStream;

  CounterStreamRepositoryImpl() {
    _counterStreamController = StreamController<int>.broadcast(
      onListen: () {
        _counterStreamController.add(_currentCounter);
      },
    );
    _counterHistoryStreamController = StreamController<List<int>>.broadcast(
      onListen: () {
        _counterHistoryStreamController.add(_counterHistory);
      },
    );

    _counterStream = _counterStreamController.stream;
    _counterHistoryStream = _counterHistoryStreamController.stream;
  }

  @override
  Stream<int> get counterStream => _counterStream;

  @override
  Stream<List<int>> get counterHistoryStream => _counterHistoryStream;

  @override
  int get currentCounter => _currentCounter;

  @override
  List<int> get counterHistory => _counterHistory;

  @override
  Future<void> increment() async {
    _currentCounter++;
    _counterHistory.add(_currentCounter);
    _counterStreamController.add(_currentCounter);
    _counterHistoryStreamController.add(_counterHistory);
  }

  @override
  Future<void> decrement() async {
    _currentCounter--;
    _counterHistory.add(_currentCounter);
    _counterStreamController.add(_currentCounter);
    _counterHistoryStreamController.add(_counterHistory);
  }

  @override
  Future<void> reset() async {
    _currentCounter = 0;
    _counterHistory.clear();
    _counterHistory.add(_currentCounter);
    _counterStreamController.add(_currentCounter);
    _counterHistoryStreamController.add(_counterHistory);
  }

  @override
  Future<void> setValue(int value) async {
    _currentCounter = value;
    _counterHistory.add(_currentCounter);
    _counterStreamController.add(_currentCounter);
    _counterHistoryStreamController.add(_counterHistory);
  }

  void dispose() {
    _counterStreamController.close();
    _counterHistoryStreamController.close();
  }
}
