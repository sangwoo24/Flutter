import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  MyCustomClipper({this.raduis});
  final double? raduis;

  @override
  Path getClip(Size size) {
    double r = raduis == null ? 0 : raduis!;

    Path path = Path()
      ..addOval(Rect.fromCircle(center: Offset((size.width / 2), r), radius: r))
      ..moveTo((size.width / 2) + r, r)
      ..lineTo(size.width, r)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, r)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
