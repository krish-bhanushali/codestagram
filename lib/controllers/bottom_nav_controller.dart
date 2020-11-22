import 'package:get/get.dart';

enum BottomNavPage { home, search, story }

class BottomNavController extends GetxController {
  BottomNavPage bottomNavPage = BottomNavPage.home;

  changePage(int c) {
    if (c == 1) {
      bottomNavPage = BottomNavPage.home;
    }
    if (c == 2) {
      bottomNavPage = BottomNavPage.search;
    }
    if (c == 3) {
      bottomNavPage = BottomNavPage.story;
    }

    update();
  }
}
