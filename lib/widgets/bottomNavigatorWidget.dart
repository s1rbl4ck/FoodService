import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:foodservice/app_styles.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      height: 60,
      color: fSecondaryColor,
      items: <Widget>[
        Icon(
          Icons.home_outlined,
          size: 30,
          color: fTeritaryColor,
        ),
        Icon(
          Icons.search,
          size: 30,
          color: fTeritaryColor,
        ),
        Icon(
          Icons.shopping_basket_outlined,
          size: 30,
          color: fTeritaryColor,
        ),
        Icon(
          Icons.receipt_long_outlined,
          size: 30,
          color: fTeritaryColor,
        ),
        Icon(
          Icons.person_outline,
          size: 30,
          color: fTeritaryColor,
        ),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
