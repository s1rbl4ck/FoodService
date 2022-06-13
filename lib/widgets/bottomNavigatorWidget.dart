import 'package:flutter/material.dart';
import 'package:foodservice/controllers/bottomNavigationController.dart';
import 'package:get/get.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:foodservice/app_styles.dart';
import 'package:ionicons/ionicons.dart';

class BottomNavigator extends StatelessWidget {
  //
  var inst = Get.find<BNavigationController>();
  void changeScreen(index) {
    inst.changeIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      height: 60,
      color: fSecondaryColor,
      items: <Widget>[
        Icon(
          inst.selectedIndex == 0 ? Ionicons.home : Ionicons.home,
          size: 30,
          color: fTeritaryColor,
        ),
        Icon(
          inst.selectedIndex == 1 ? Ionicons.search : Ionicons.search_outline,
          size: 30,
          color: fTeritaryColor,
        ),
        Icon(
          inst.selectedIndex == 2
              ? Ionicons.basket_outline
              : Ionicons.basket_outline,
          size: 30,
          color: fTeritaryColor,
        ),
        Icon(
          inst.selectedIndex == 3 ? Ionicons.receipt : Ionicons.receipt_outline,
          size: 30,
          color: fTeritaryColor,
        ),
        Icon(
          inst.selectedIndex == 4 ? Ionicons.map : Ionicons.map_outline,
          size: 30,
          color: fTeritaryColor,
        ),
      ],
      onTap: (index) {
        //Handle button tap
        changeScreen(index);
      },
    );
  }
}
