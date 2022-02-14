import 'package:get/get.dart';

class HomeController extends GetxController {
  // Agreeing with App Rules
  var name = 'نام و نام خانوادگی'.obs;
  var urlImage = 'https://i.ibb.co/Y3xcpgH/profile-Picture.jpg'.obs;
  var number = '09*********'.obs;
  var walletValue = '1,415,000'.obs;
  var isDataRecieved = false.obs;

  void setName(value) {
    name.value = value;
  }

  void setNumber(value) {
    number.value = value;
  }

  void setWalletValue(value) {
    walletValue.value = value;
  }

  void setIsDataRecieved(value) {
    isDataRecieved.value = value;
  }
}
