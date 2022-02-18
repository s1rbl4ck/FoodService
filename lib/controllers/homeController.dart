import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeController extends GetxController {
  // Agreeing with App Rules
  var name = 'نام و نام خانوادگی'.obs;
  var urlImage = 'https://i.ibb.co/Y3xcpgH/profile-Picture.jpg'.obs;
  var number = '09*********'.obs;
  var walletValue = '1,415,000'.obs;
  var isDataRecieved = false.obs;
  var currentSlide = 0.obs;
  final CarouselController sliderController = CarouselController();

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

  void setCurrentSlide(value) {
    currentSlide.value = value;
  }
}
