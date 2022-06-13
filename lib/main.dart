import 'package:flutter/material.dart';
import 'package:foodservice/bindings/bindings.dart';
import 'package:foodservice/screens/authCode.dart';
import 'package:foodservice/screens/infoGet.dart';
import 'package:get/get.dart';
import 'package:foodservice/screens/index.dart';
import 'package:foodservice/screens/auth.dart';
import 'package:foodservice/screens/onboarding.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'vazir',
      ),
      debugShowCheckedModeBanner: false,
      // App Routes
      getPages: [
        GetPage(name: '/onboarding', page: () => OnboardingScreen()),
        GetPage(
          name: '/auth',
          page: () => AuthScreen(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: 500),
        ),
        GetPage(
          name: '/authCode',
          page: () => AuthCodeScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: Duration(milliseconds: 500),
        ),
        GetPage(name: '/infoGet', page: () => infoGetScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
      initialBinding: AppBindings(),
      initialRoute: '/onboarding',
    );
  }
}
