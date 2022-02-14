import 'package:get/get.dart';

class AuthController extends GetxController {
  // Agreeing with App Rules
  var ruleCheck = false.obs;
  var inputValue = '09'.obs;
  var isActiveButton = false.obs;
  // Rules Agree Toggle Method
  void ToggleRule() {
    ruleCheck.value = !ruleCheck.value;
    activeButton();
  }

  void changeInputVal(val) {
    inputValue.value = val;
    activeButton();
  }

  void activeButton() {
    if (inputValue.value.length == 11 && ruleCheck.value) {
      isActiveButton.value = true;
    } else {
      isActiveButton.value = false;
    }
  }
}
