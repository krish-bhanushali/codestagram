import 'package:codestagram/controllers/bottom_nav_controller.dart';
import 'package:codestagram/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  final BottomNavController bottomNavController;
  const BottomNav({Key key, this.bottomNavController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      init: bottomNavController,
      builder: (bottomNavController) => bottomNavController.navStatus == 0
          ? Container()
          : Container(
              height: 60,
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
              child: bottomNavController.navStatus == 2
                  ? Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(18))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/camera-f.svg',
                            color: AppColors.black,
                            height: 24,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Camera',
                            style: TextStyle(
                              color: AppColors.black,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            bottomNavController.changePage(1);
                          },
                          child: Container(
                            color: AppColors.white,
                            width: ScreenUtil().setWidth(414 / 5),
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: SvgPicture.asset(
                              bottomNavController.bottomNavPage.toString() == 'BottomNavPage.home' ? 'assets/svg/home-f.svg' : 'assets/svg/home.svg',
                              width: 20,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            bottomNavController.changePage(2);
                          },
                          child: Container(
                            color: AppColors.white,
                            width: ScreenUtil().setWidth(414 / 5),
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: SvgPicture.asset(
                              bottomNavController.bottomNavPage.toString() == 'BottomNavPage.search' ? 'assets/svg/search-f.svg' : 'assets/svg/search.svg',
                              width: 20,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(414 / 5),
                          height: ScreenUtil().setWidth(414 / 5),
                          padding: EdgeInsets.all(12),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.black, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Icon(Icons.add),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            bottomNavController.changePage(4);
                          },
                          child: Container(
                            color: AppColors.white,
                            width: ScreenUtil().setWidth(414 / 5),
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: SvgPicture.asset(
                              bottomNavController.bottomNavPage.toString() == 'BottomNavPage.activity' ? 'assets/svg/heart-f.svg' : 'assets/svg/heart.svg',
                              width: 20,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            bottomNavController.changePage(5);
                          },
                          child: Container(
                            color: AppColors.white,
                            width: ScreenUtil().setWidth(414 / 5),
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: SvgPicture.asset(
                              bottomNavController.bottomNavPage.toString() == 'BottomNavPage.profile' ? 'assets/svg/user-f.svg' : 'assets/svg/user.svg',
                              width: 20,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
    );
  }
}
