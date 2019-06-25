import 'package:flutter/material.dart';
import '../widgets/os_numpad.dart';

class EnterPin extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: OsNumpad(),
      ),
    );
  }
}