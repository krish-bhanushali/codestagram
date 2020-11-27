import 'package:codestagram/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActivityAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double padding;

  const ActivityAppBar({
    Key key,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.only(top: padding, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Activity',
                  style: TextStyle(
                    color: AppColors.black,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.supervised_user_circle,
              size: 28,
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
