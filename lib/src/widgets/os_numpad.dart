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
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "2",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
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
                child: buildButton(
                  Text(
                    "4",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "5",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
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
                child: buildButton(
                  Text(
                    "7",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "8",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
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
                child: buildButton(Icon(
                  Icons.backspace,
                  size: 24,
                )),
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
                child: buildButton(Icon(
                  Icons.check_circle,
                  size: 36,
                )),
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
        //splashColor: Colors.red,
        onTap: () {
          print("Fucken print");
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
