import 'package:flutter/material.dart';
import '../blocs/pin_provider.dart';

class PinField extends StatelessWidget {
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
              buildBox(""),
              buildBox(""),
              buildBox(""),
              buildBox(""),
            ],
          );
        } else if (snapshot.data.length == 1) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(snapshot.data),
              buildBox(""),
              buildBox(""),
              buildBox(""),
            ],
          );
        } else if (snapshot.data.length == 2) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(snapshot.data[0]),
              buildBox(snapshot.data[1]),
              buildBox(""),
              buildBox(""),
            ],
          );
        } else if (snapshot.data.length == 3) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(snapshot.data[0]),
              buildBox(snapshot.data[1]),
              buildBox(snapshot.data[2]),
              buildBox(""),
            ],
          );
        } else if (snapshot.data.length == 4) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(snapshot.data[0]),
              buildBox(snapshot.data[1]),
              buildBox(snapshot.data[2]),
              buildBox(snapshot.data[3]),
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBox(""),
              buildBox(""),
              buildBox(""),
              buildBox(""),
            ],
          );
        }
      },
    );
  }

  Widget buildBox(String number) {
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
      child: Center(
        child: Text(
          number,
          style: _textStyle,
        ),
      ),
    );
  }
}
