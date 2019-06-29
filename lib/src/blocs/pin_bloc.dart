import 'package:rxdart/rxdart.dart';

class PinBloc extends Object {
  final _currentValue = BehaviorSubject<String>();
  final _currentMode = BehaviorSubject<String>();

  Observable<String> get currentValue => _currentValue.stream;
  Observable<String> get currentMode => _currentMode.stream;

  Function(String) get changeValue => _currentValue.sink.add;
  Function(String) get changeMode => _currentMode.sink.add;

  String getCuurentValue() {
    return _currentValue.value;
  }

  String getCurrentMode() {
    return _currentMode.value;
  }

  dispose() {
    _currentValue.close();
    _currentMode.close();
  }
}
