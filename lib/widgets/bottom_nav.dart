import 'package:codestagram/controllers/bottom_nav_controller.dart';
import 'package:codestagram/pages/story/stories.dart';
import 'package:codestagram/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  final BottomNavController bottomNavController;
  const BottomNav({Key key, this.bottomNavController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(1, -1), blurRadius: 4),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              bottomNavController.changePage(1);
            },
            child: Container(
              padding: EdgeInsets.all(6),
              child: SvgPicture.asset(
                'assets/svg/home.svg',
                width: 26,
                color: AppColors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              bottomNavController.changePage(2);
            },
            child: Container(
              padding: EdgeInsets.all(6),
              child: SvgPicture.asset(
                'assets/svg/search.svg',
                width: 26,
                color: AppColors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(CodeStoryView());
            },
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: SvgPicture.asset(
                'assets/svg/plus.svg',
                width: 26,
                color: AppColors.black,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: SvgPicture.asset(
              'assets/svg/heart.svg',
              width: 26,
              color: AppColors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: SvgPicture.asset(
              'assets/svg/user.svg',
              width: 26,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
