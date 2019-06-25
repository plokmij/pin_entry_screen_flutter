import 'package:flutter/material.dart';

class OsNumpad extends StatelessWidget {
  final TextStyle buttonNumber = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w500,
  );
  final double _paddingValue = 10;
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Text(
                    "1",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Text(
                    "2",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Text(
                    "3",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Text(
                    "4",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Text(
                    "5",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Text(
                    "6",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Text(
                    "7",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Text(
                    "8",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Text(
                    "9",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_paddingValue),
                  child: Icon(Icons.backspace),
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "0",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: buildButton(Icon(Icons.check_circle_outline)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(Widget child) {
    return Material(
      child: InkWell(
        onTap: () {
          print("Fucken print");
        },
        child: Padding(
          child: child,
          padding: EdgeInsets.all(_paddingValue),
        ),
      ),
    );
  }
}
