import 'package:get/get.dart';
import 'package:foodservice/app_styles.dart';

class AuthController extends GetxController {
  // Agreeing with App Rules
  var ruleCheck = false.obs;
  var inputValue = '09'.obs;
  var isActiveButton = false.obs;
  var pinCode = ''.obs;
  var timeOut = CodeTimeOut.obs;
  // Rules Agree Toggle Method
  void ToggleRule() {
    ruleCheck.value = !ruleCheck.value;
    activeButton();
  }

  void changeInputVal(val) {
    inputValue.value = val;
    activeButton();
  }

  void changePinCode(pin) {
    pinCode.value = pin;
  }

  void incrementTimeOut(val) {
    timeOut.value = val;
  }

  void activeButton() {
    if (inputValue.value.length == 11 && ruleCheck.value) {
      isActiveButton.value = true;
    } else {
      isActiveButton.value = false;
    }
  }
}
