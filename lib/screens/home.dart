import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:foodservice/controllers/homeController.dart';
import 'package:get/get.dart';
import 'package:foodservice/widgets/shimmer/mainFoodWidget.Dart';
import 'package:foodservice/widgets/shimmer/mainBannerWidget.dart';
import 'package:foodservice/widgets/shimmer/mainProfileWidget.dart';
import 'package:foodservice/widgets/drawerWidget.dart';
import 'package:foodservice/widgets/bottomNavigatorWidget.dart';
import 'package:foodservice/widgets/home/homeScreenWidget.dart';

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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: fSecondaryColor,
          elevation: 0,
          foregroundColor: fTeritaryColor,
          title: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: fTeritaryColor),
                  ),
                  child: Icon(
                    Icons.location_pin,
                    color: fTeritaryColor,
                  ),
                ),
                Text(
                  'انتخاب موقعیت مکانی',
                  style: TextStyle(color: fTeritaryColor, fontSize: 17),
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 35,
                  color: fTeritaryColor,
                ),
              ],
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  // Container(
                  //   child:
                  // ),
                  Icon(
                    Icons.notifications,
                    color: fTeritaryColor,
                  ),
                ],
              ),
            )
          ],
        ),
        drawer: CustomDrawer(),
        bottomNavigationBar: BottomNavigator(),
        body: Obx(
          () => SingleChildScrollView(
            child: !Get.find<HomeController>().isDataRecieved.value
                ? Column(
                    children: [
                      ShimmerBannerWidget(),
                      ShimmerProfilesWidget(),
                      ShimmerFoodWidget(),
                      ShimmerFoodWidget(),
                      ShimmerFoodWidget(),
                      ShimmerFoodWidget(),
                    ],
                  )
                : HomeScreenWidget(),
          ),
        ),
      ),
    );
  }
}
