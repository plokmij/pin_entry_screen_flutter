import 'package:flutter/material.dart';

class OsNumpad extends StatelessWidget {
  final TextStyle buttonNumber = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w500,
  );
  final double _paddingValue = 10;
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.lightBlue,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: buildButton(
                  Text(
                    "1",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "1",
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "2",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "2",
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "3",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "3",
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: buildButton(
                  Text(
                    "4",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "4",
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "5",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "5",
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "6",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "6",
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: buildButton(
                  Text(
                    "7",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "7",
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "8",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "8",
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "9",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "9",
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: buildButton(
                  Icon(
                    Icons.backspace,
                    size: 24,
                  ),
                  "backspace",
                ),
              ),
              Expanded(
                child: buildButton(
                    Text(
                      "0",
                      style: buttonNumber,
                      textAlign: TextAlign.center,
                    ),
                    "0"),
              ),
              Expanded(
                child: buildButton(
                  Icon(
                    Icons.check_circle,
                    size: 36,
                  ),
                  "check",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(Widget child, String value) {
    return Material(
      child: InkWell(
        //splashColor: Colors.red,
        onTap: () {
          print(value);
        },
        child: Container(
          child: child,
          padding: EdgeInsets.all(_paddingValue),
          //color: Colors.lightBlue,
        ),
      ),
    );
  }
}
