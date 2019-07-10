import 'package:flutter/material.dart';
class WavyContainer extends StatelessWidget {
  final Color color;

  WavyContainer({this.color});

  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/2.5,
        color: color,
        /*decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1F0587),
              Color(0xff94CAF1),
            ],
          ),
        ),*/
      ),
      clipper: BottomWaveClipper(),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}