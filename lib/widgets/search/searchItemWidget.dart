import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:get/get.dart';

Widget SearchItemWidget({
  required double textWidth,
  required String title,
  required String description,
  required String imageUrl,
}) {
  return GestureDetector(
    onTap: () {
      print('clicked on Item');
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFecf0f1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: textWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: Get.width,
                  child: Text(
                    description,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
