import 'package:flutter/material.dart';

class PinField extends StatelessWidget {
  Widget build(BuildContext context) {
    return buildRow();
  }

  Widget buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        buildBox(),
        buildBox(),
        buildBox(),
        buildBox(),
      ],
    );
  }

  Widget buildBox() {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(
          Radius.circular(9.0),
        ),
      ),
    );
  }
}
