import 'package:get/get_state_manager/src/simple/get_state.dart';

class ProfileTabsController extends GetxController {
  int tab = 2;

  changeTab(int i) {
    tab = i;
    update();
  }
}
