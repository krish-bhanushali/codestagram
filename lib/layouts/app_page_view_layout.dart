import 'package:codestagram/controllers/bottom_nav_controller.dart';
import 'package:codestagram/layouts/bottom_nav_layout.dart';
import 'package:codestagram/pages/camera/camera.dart';
import 'package:codestagram/pages/message/message.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class AppPageView extends StatelessWidget {
  final BottomNavController bottomNavController = BottomNavController();
  final PageController _pageController = PageController(initialPage: 1);
  List<Widget> children = [
    CameraScreen(),
    BottomNavLayout(),
    MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavController>(
        init: bottomNavController,
        builder: (bottomNavController) => PageView(
          controller: _pageController,
          physics: bottomNavController.bottomNavPage.toString() == 'BottomNavPage.home' ? BouncingScrollPhysics() : NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            bottomNavController.changeBottomNav(value);
          },
          children: children,
        ),
      ),
    );
  }
}
