import 'package:flutter/material.dart';
import 'pin_bloc.dart';
export "pin_bloc.dart";

class PinProvider extends InheritedWidget {
  final bloc = PinBloc();

  PinProvider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static PinBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(PinProvider) as PinProvider)
        .bloc;
  }
}
