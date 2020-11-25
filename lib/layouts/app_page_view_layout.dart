import 'package:codestagram/controllers/bottom_nav_controller.dart';
import 'package:codestagram/pages/home/home.dart';
import 'package:codestagram/pages/message/message.dart';
import 'package:flutter/material.dart';

class AppPageView extends StatelessWidget {
  final BottomNavController bottomNavController;
  AppPageView({this.bottomNavController});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        onPageChanged: (value) {
          bottomNavController.changeBottomNav(value);
        },
        children: [
          HomePage(),
          MessagePage(),
        ],
      ),
    );
  }
}
