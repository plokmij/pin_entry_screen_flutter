import 'package:flutter/material.dart';
import 'screens/enter_pin.dart';
import 'blocs/pin_provider.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PinProvider(
        child: EnterPin(),
      ),
    );
  }
}
