import 'package:flutter/widgets.dart';

class LoginTopContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int roundness = 35;
    Path path = Path();

    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(size.width * 0.01, size.height - roundness,
        size.width * 0.10, size.height - roundness);
    path.lineTo(size.width * 0.90, size.height - roundness);
    path.quadraticBezierTo(size.width + size.width * 0.04,
        size.height - roundness, size.width, size.height + roundness);
    path.lineTo(size.width, 0.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
