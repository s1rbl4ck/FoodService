import 'package:flutter/material.dart';
import 'package:foodservice/controllers/homeController.dart';
import 'package:get/get.dart';
import 'package:foodservice/app_styles.dart';
import 'dart:ui' show ImageFilter;

class CustomDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 20);
    return ClipPath(
      child: SafeArea(
        child: Container(
          width: 285,
          child: Stack(children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 3,
                sigmaY: 3,
              ),
              child: Material(
                color: fPrimaryColorBlured,
                child: ListView(
                  padding: padding,
                  children: [
                    DrawerHeader(
                      urlImage: Get.find<HomeController>().urlImage.value,
                      name: Get.find<HomeController>().name.value,
                      number: Get.find<HomeController>().number.value,
                      walletValue: Get.find<HomeController>().walletValue.value,
                    ),
                    const SizedBox(height: 5),
                    Divider(color: Colors.white70),
                    DrawerItem(
                      text: 'پروفایل',
                      icon: Icons.person,
                      onClicked: () => selectedIndex(context, 0),
                    ),
                    const SizedBox(height: 16),
                    DrawerItem(
                      text: 'تنظیمات',
                      icon: Icons.settings,
                      onClicked: () => selectedIndex(context, 1),
                    ),
                    const SizedBox(height: 16),
                    DrawerItem(
                      text: 'پشتیبانی',
                      icon: Icons.support_agent,
                      onClicked: () => selectedIndex(context, 2),
                    ),
                    const SizedBox(height: 16),
                    DrawerItem(
                      text: 'درباره',
                      icon: Icons.people,
                      onClicked: () => selectedIndex(context, 3),
                    ),
                    const SizedBox(height: 16),
                    DrawerItem(
                      text: 'خروج',
                      icon: Icons.logout,
                      onClicked: () => selectedIndex(context, 4),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget DrawerHeader({
  required String urlImage,
  required String name,
  required String number,
  required String walletValue,
}) {
  return Container(
    padding: EdgeInsets.only(top: 40, bottom: 20),
    child: Row(children: [
      CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(urlImage),
        backgroundColor: fPrimaryColorBlured,
      ),
      SizedBox(width: 10),
      Column(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Text(
            'موجودی: $walletValue تومان',
            style: TextStyle(fontSize: 15),
          ),
        ],
      )
    ]),
  );
}

Widget DrawerItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = fTeritaryColor;
  final hoverColor = fTeritaryColor;
  return ListTile(
    leading: Icon(
      icon,
      color: color,
      size: 30,
    ),
    title: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 17,
      ),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedIndex(BuildContext context, int index) {
  switch (index) {
    case 0:
      Get.toNamed('/profile');
      break;
    case 1:
      Get.toNamed('/settings');
      break;
    case 2:
      Get.toNamed('/support');
      break;
    case 3:
      Get.toNamed('/about');
      break;
    case 4:
      Get.toNamed('/logout');
      break;
  }
}
