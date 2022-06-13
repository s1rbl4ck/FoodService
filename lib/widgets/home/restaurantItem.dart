import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

Widget RestaurantItem({
  required String title,
  required String category,
  required String description,
  required String coverImageUrl,
  required String imageUrl,
  required bool isOpened,
  required String deliveryPrice,
  required String distance,
}) {
  return Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0xFF34495e).withOpacity(0.05),
          blurRadius: 6.0,
          spreadRadius: 1.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ],
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Container(
          width: 215,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            child: Stack(
              children: [
                Image.asset(coverImageUrl),
                Positioned(
                  right: 7.5,
                  bottom: 7.5,
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: fPrimaryColorBlured,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(imageUrl),
                    ),
                  ),
                ),
                Positioned(
                  left: 7.5,
                  bottom: 7.5,
                  child: isOpened
                      ? Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Container(
                            child: Icon(
                              Ionicons.ban_outline,
                              color: fPrimaryColor,
                              size: 18,
                            ),
                          ),
                        )
                      : Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Container(
                            child: Icon(
                              Ionicons.checkmark_circle_outline,
                              color: fPrimaryColor,
                              size: 18,
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Container(
              width: 215,
              padding: const EdgeInsets.only(
                  top: 8.0, right: 8.0, left: 8.0, bottom: 1.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 210,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                category,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: fTeritaryColor,
                ),
              ),
            ),
            Container(
              width: 210,
              padding: const EdgeInsets.fromLTRB(8, 2, 9, 2),
              child: Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              width: 180,
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: fTeritaryColor.withOpacity(0.1),
                ),
              ),
            ),
            Container(
              width: 210,
              padding: const EdgeInsets.fromLTRB(8, 2, 9, 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    textDirection: TextDirection.ltr,
                    children: [
                      Text(deliveryPrice),
                      SizedBox(width: 4),
                      Icon(
                        Ionicons.bicycle_outline,
                        size: 18,
                      )
                    ],
                  ),
                  Wrap(
                    textDirection: TextDirection.ltr,
                    children: [
                      Text(distance),
                      Icon(
                        Ionicons.location_outline,
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}
