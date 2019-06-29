import 'package:flutter/material.dart';
import '../blocs/pin_provider.dart';

class OsNumpad extends StatelessWidget {
  final TextStyle buttonNumber = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w500,
  );
  final double _paddingValue = 10;
  Widget build(BuildContext context) {
    final bloc = PinProvider.of(context);
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
                  bloc,
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
                  bloc,
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
                  bloc,
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
                  bloc,
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
                  bloc,
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
                  bloc,
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
                  bloc,
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
                  bloc,
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
                  bloc,
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
                  bloc,
                ),
              ),
              Expanded(
                child: buildButton(
                  Text(
                    "0",
                    style: buttonNumber,
                    textAlign: TextAlign.center,
                  ),
                  "0",
                  bloc,
                ),
              ),
              Expanded(
                child: buildButton(
                  Icon(
                    Icons.check_circle,
                    size: 36,
                  ),
                  "check",
                  bloc,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(Widget child, String value, PinBloc bloc) {
    return Material(
      child: InkWell(
        onTap: () {
          String toUpdate = "";
          String currentValue = bloc.getCuurentValue();
          int currentLength = currentValue == null ? 0 : currentValue.length;
          if (value == "check") {
            print(currentValue);
          } else {
            if (value == "backspace") {
              print("Backspace pressed");
              if (currentValue != null && currentLength != 0) {
                print("Inside backspace handler");
                print("Current length is $currentLength");
                toUpdate = currentValue.substring(0, currentLength - 1);
                print("Vaaaaaaaaaaaaaaaaaaaaalue $toUpdate");
                bloc.changeValue(toUpdate);
              }
            } else {
              if (currentValue != null && currentValue.length < 4) {
                toUpdate = currentValue + value;
              } else if (currentValue == null) {
                toUpdate = value;
              }

              //print(value.length);

              if (toUpdate.length <= 4 && currentValue == null
                  ? true
                  : currentValue.length != 4) {
                bloc.changeValue(toUpdate);
              }
            }
          }
          print("Current vaaaaaaaaaaaalue ${bloc.getCuurentValue()}");
          //value = null;
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
