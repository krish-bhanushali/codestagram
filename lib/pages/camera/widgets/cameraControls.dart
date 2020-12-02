import 'package:flutter/material.dart';

class CameraControlWidget extends StatelessWidget {
  final double radiusOfCircle;
  final double borderRadius;
  final Color borderColor;
  final Widget child;
  final Color backgroundColor;
  const CameraControlWidget({
    Key key,
    this.radiusOfCircle,
    this.borderColor,
    this.child,
    this.backgroundColor,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radiusOfCircle,
      width: radiusOfCircle,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        color: backgroundColor,
        border: Border.all(width: 2, color: borderColor),
      ),
      child: child,
    );
  }
}
