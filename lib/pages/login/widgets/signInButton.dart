import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    Key key,
    @required this.width,
    @required this.height,
    this.fillColor,
    this.title,
    this.titleColor,
    this.hasIcon,
    this.iconSource,
    this.function,
  }) : super(key: key);

  final double width;
  final double height;
  final Color fillColor;
  final String title;
  final Color titleColor;
  final bool hasIcon;
  final String iconSource;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(8.0),
        width: width * 0.75,
        height: height * 0.09,
        decoration: BoxDecoration(
            color: fillColor,
            border: Border.all(color: Colors.grey[400]),
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: hasIcon,
              child: SvgPicture.asset(
                iconSource,
                width: 36,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              title,
              style: TextStyle(
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold,
                  color: titleColor),
            )
          ],
        ),
      ),
    );
  }
}
