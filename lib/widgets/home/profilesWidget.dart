import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:get/get.dart';

Widget profileWidget({
  required String imageUrl,
  required String name,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
              backgroundColor: fPrimaryColorBlured,
            ),
            SizedBox(height: 2),
            Text(name),
          ],
        ),
      ),
    ],
  );
}
