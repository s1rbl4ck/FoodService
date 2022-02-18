import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

Widget FoodItem({
  required String name,
  required String imageUrl,
  required String price,
  required String category,
}) {
  return Container(
    width: 160,
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
          height: 160,
          width: 160,
          child: Image.asset(imageUrl),
        ),
        Container(
          width: 130,
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: 130,
          child: Text(
            category,
            style: TextStyle(color: fTeritaryColor.withOpacity(0.8)),
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: 130,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price + ' تومان',
                style: TextStyle(
                    color: fTeritaryColor, fontWeight: FontWeight.bold),
              ),
              Icon(
                Ionicons.heart,
                color: Colors.red,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
