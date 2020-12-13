import 'package:codestagram/controllers/bottom_nav_controller.dart';
import 'package:codestagram/pages/activity/activity.dart';
import 'package:codestagram/pages/home/home.dart';
import 'package:codestagram/pages/profile/profile.dart';
import 'package:codestagram/pages/search/search.dart';
import 'package:codestagram/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:get/get.dart';

class BottomNavLayout extends StatelessWidget {
  final BottomNavController _bottomNavController = BottomNavController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, allowFontScaling: true, designSize: Size(414, 736));

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<BottomNavController>(
              init: _bottomNavController,
              builder: (controller) {
                if (controller.bottomNavPage.toString() == 'BottomNavPage.search') {
                  return SearchPage();
                }
                if (controller.bottomNavPage.toString() == 'BottomNavPage.activity') {
                  return ActivityPage();
                }
                if (controller.bottomNavPage.toString() == 'BottomNavPage.profile') {
                  return ProfilePage();
                }
                return HomePage();
              },
            ),
          ),
          BottomNav(bottomNavController: _bottomNavController),
        ],
      ),
    );
  }
}
