import 'package:get/get.dart';

enum BottomNavPage { home, search, activity, profile }

class BottomNavController extends GetxController {
  BottomNavPage bottomNavPage = BottomNavPage.home;
  int navStatus;

  changePage(int c) {
    if (c == 1) {
      bottomNavPage = BottomNavPage.home;
    }
    if (c == 2) {
      bottomNavPage = BottomNavPage.search;
    }
    if (c == 4) {
      bottomNavPage = BottomNavPage.activity;
    }
    if (c == 5) {
      bottomNavPage = BottomNavPage.profile;
    }

    update();
  }

  changeBottomNav(int val) {
    navStatus = val;
    update();
  }
}
