import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:get/get.dart';

Widget CategoriesWidget({
  required String imageUrl,
  required String name,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              padding: EdgeInsets.all(2),
              child: Image.asset(imageUrl),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: fSecondaryColor,
              ),
            ),
            SizedBox(height: 2),
            Text(name),
          ],
        ),
      ),
    ],
  );
}
