import 'package:flutter/material.dart';
import '../blocs/pin_provider.dart';

class PinField extends StatelessWidget {
  final String mode;
  PinField({this.mode});

  final _textStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
  );
  Widget build(BuildContext context) {
    final bloc = PinProvider.of(context);
    return buildRow(bloc);
  }

  Widget buildRow(PinBloc bloc) {
    return StreamBuilder(
      stream: bloc.currentValue,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(
                "",
                true,
              ),
              buildBox(
                "",
                false,
              ),
              buildBox(
                "",
                false,
              ),
              buildBox(
                "",
                false,
              ),
            ],
          );
        } else if (snapshot.data.length == 1) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(
                mode == "hide" ? "unda" : snapshot.data,
                false,
              ),
              buildBox(
                "",
                true,
              ),
              buildBox(
                "",
                false,
              ),
              buildBox(
                "",
                false,
              ),
            ],
          );
        } else if (snapshot.data.length == 2) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(
                mode == "hide" ? "unda" : snapshot.data[0],
                false,
              ),
              buildBox(
                mode == "hide" ? "unda" : snapshot.data[1],
                false,
              ),
              buildBox(
                "",
                true,
              ),
              buildBox(
                "",
                false,
              ),
            ],
          );
        } else if (snapshot.data.length == 3) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(
                mode == "hide" ? "unda" : snapshot.data[0],
                false,
              ),
              buildBox(
                mode == "hide" ? "unda" : snapshot.data[1],
                false,
              ),
              buildBox(
                mode == "hide" ? "unda" : snapshot.data[2],
                false,
              ),
              buildBox(
                "",
                true,
              ),
            ],
          );
        } else if (snapshot.data.length == 4) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(
                mode == "hide" ? "unda" : snapshot.data[0],
                false,
              ),
              buildBox(
                mode == "hide" ? "unda" : snapshot.data[1],
                false,
              ),
              buildBox(
                mode == "hide" ? "unda" : snapshot.data[2],
                false,
              ),
              buildBox(
                mode == "hide" ? "unda" : snapshot.data[3],
                false,
              ),
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(
                "",
                true,
              ),
              buildBox(
                "",
                false,
              ),
              buildBox(
                "",
                false,
              ),
              buildBox(
                "",
                false,
              ),
            ],
          );
        }
      },
    );
  }

  Widget buildBox(String number, bool focus) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: focus ? Colors.green : Colors.grey,
          width: 3.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(9.0),
        ),
      ),
      child: Center(
        child: number == "unda"
            ? Icon(Icons.lens)
            : Text(
                number,
                style: _textStyle,
              ),
      ),
    );
  }
}
