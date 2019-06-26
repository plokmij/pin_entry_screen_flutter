import 'package:flutter/material.dart';
import '../widgets/os_numpad.dart';
import '../widgets/pin_field.dart';

class EnterPin extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 40,
                  bottom: 0.0,
                ),
                child: Text(
                  "My App Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.redAccent,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("Somethi"),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "ENTER APP PIN",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      "SHOW",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
          PinField(),
          Spacer(),
          OsNumpad(),
          //Spacer(),
        ],
      ),
    );
  }
}
