import 'package:flutter/material.dart';
import 'package:foodservice/controllers/bottomNavigationController.dart';
import 'package:foodservice/controllers/homeController.dart';
import 'package:foodservice/widgets/home/homeAppBarWidget.dart';
import 'package:foodservice/widgets/search/searchAppBarWidget.dart';
import 'package:foodservice/widgets/search/searchScreenWidget.dart';
import 'package:get/get.dart';
import 'package:foodservice/widgets/shimmer/mainFoodWidget.Dart';
import 'package:foodservice/widgets/shimmer/mainBannerWidget.dart';
import 'package:foodservice/widgets/shimmer/mainProfileWidget.dart';
import 'package:foodservice/widgets/drawerWidget.dart';
import 'package:foodservice/widgets/bottomNavigatorWidget.dart';
import 'package:foodservice/widgets/home/indexScreenWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void replaceShimmer() {
    Get.find<HomeController>().isDataRecieved.value =
        !Get.find<HomeController>().isDataRecieved.value;
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      replaceShimmer();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget routeContent() {
      if (Get.find<HomeController>().isDataRecieved.value) {
        switch (Get.find<BNavigationController>().selectedIndex.value) {
          case 0:
            return HomeScreenWidget();
          case 1:
            return SearchScreenWidget();
          case 2:
            return Text('Basket Screen');
          case 3:
            return Text('Receipt Screen');
          case 4:
            return Text('Map Screen');
          default:
            return Text('No Where');
        }
      } else {
        return Column(
          children: [
            ShimmerBannerWidget(),
            ShimmerProfilesWidget(),
            ShimmerFoodWidget(),
            ShimmerFoodWidget(),
            ShimmerFoodWidget(),
            ShimmerFoodWidget(),
          ],
        );
      }
    }

    AppBar appBarRoute() {
      switch (Get.find<BNavigationController>().selectedIndex.value) {
        case 0:
          return HomeAppBarWidget();
        case 1:
          return SearchAppBarWidget();
        case 2:
          return HomeAppBarWidget();
        case 3:
          return HomeAppBarWidget();
        case 4:
          return HomeAppBarWidget();
        default:
          return HomeAppBarWidget();
      }
    }

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Obx(
        () => Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: appBarRoute(),
          drawer: CustomDrawer(),
          bottomNavigationBar: BottomNavigator(),
          body: SingleChildScrollView(
            child: routeContent(),
          ),
        ),
      ),
    );
  }
}
