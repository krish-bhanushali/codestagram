import 'package:codestagram/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(padding: MediaQuery.of(context).padding.top),
      body: Container(
        child: Center(
          child: Text('profile'),
        ),
      ),
    );
  }
}

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double padding;

  const ProfileAppBar({
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
            Text(
              'Suraj Boniwal',
              style: TextStyle(
                color: AppColors.black,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SvgPicture.asset(
              'assets/svg/setting.svg',
              color: Colors.grey[700],
              width: 20,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
