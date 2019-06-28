import 'package:rxdart/rxdart.dart';

class PinBloc extends Object {
  final _currentValue = BehaviorSubject<String>();

  Observable<String> get currentValue => _currentValue.stream;

  Function(String) get changeValue => _currentValue.sink.add;

  String getCuurentValue() {
    return _currentValue.value;
  }

  dispose() {
    _currentValue.close();
  }
}
