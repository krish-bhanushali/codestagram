import 'package:codestagram/controllers/bottom_nav_controller.dart';
import 'package:codestagram/pages/home/home.dart';
import 'package:codestagram/pages/search/search.dart';
import 'package:codestagram/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavLayout extends StatelessWidget {
  final BottomNavController _bottomNavController = BottomNavController();

  @override
  Widget build(BuildContext context) {
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
