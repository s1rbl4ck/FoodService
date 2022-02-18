import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';

AppBar HomeAppBarWidget() {
  return AppBar(
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
  );
}
