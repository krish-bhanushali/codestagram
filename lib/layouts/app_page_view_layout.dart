import 'package:codestagram/controllers/bottom_nav_controller.dart';
import 'package:codestagram/pages/camera/camera.dart';
import 'package:codestagram/pages/home/home.dart';
import 'package:codestagram/pages/message/message.dart';
import 'package:flutter/material.dart';

class AppPageView extends StatelessWidget {
  final BottomNavController bottomNavController;
  final PageController _pageController = PageController(initialPage: 1);
  AppPageView({this.bottomNavController});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: BouncingScrollPhysics(),
        onPageChanged: (value) {
          bottomNavController.changeBottomNav(value);
        },
        children: [
          CameraScreen(),
          HomePage(),
          MessagePage(),
        ],
      ),
    );
  }
}
