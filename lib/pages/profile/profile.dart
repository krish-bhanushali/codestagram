import 'package:codestagram/styles/colors.dart';
import 'package:flutter/material.dart';

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
        padding: EdgeInsets.only(top: padding, left: 12, right: 12),
        child: Row(
          children: [
            Text(
              'Suraj',
              style: TextStyle(
                color: AppColors.black,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
