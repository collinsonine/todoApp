import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.height / 18,
      size.height - 30,
      size.width / 4,
      size.height - 20,
    );
    path.quadraticBezierTo(
        13 / 14 * size.width, size.height - 5, size.width, size.height - 90);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
