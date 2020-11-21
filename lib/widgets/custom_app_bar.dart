import 'package:flutter/material.dart';
import '../styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key key,
    @required this.padding,
  }) : super(key: key);

  final double padding;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        height: double.infinity,
        color: AppColors.white,
        padding: EdgeInsets.only(top: padding, left: 12, right: 12),
        child: Row(
          children: [
            Image.asset(
              'assets/png/instagram.png',
              width: ScreenUtil().setWidth(120),
            ),
            Expanded(child: Container()),
            SvgPicture.asset(
              'assets/svg/camera.svg',
              width: 24,
            ),
            SizedBox(width: 16),
            SvgPicture.asset(
              'assets/svg/paper-plane.svg',
              width: 24,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
