import 'package:foodservice/controllers/authController.dart';
import 'package:foodservice/controllers/bottomNavigationController.dart';
import 'package:foodservice/controllers/homeController.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Authentication Controller
    Get.lazyPut(() => AuthController());
    // Bottom Navigator
    Get.lazyPut(() => BNavigationController());
    // Home
    Get.lazyPut(() => HomeController());
  }
}
