import 'package:get/get.dart';

class BNavigationController extends GetxController {
  // Agreeing with App Rules
  var selectedIndex = 0.obs;

  void changeIndex(value) {
    selectedIndex.value = value;
  }
}
