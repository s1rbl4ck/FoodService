import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:foodservice/model/searchItems.dart';

AppBar SearchAppBarWidget() {
  return AppBar(
    backgroundColor: fSecondaryColor,
    elevation: 0,
    foregroundColor: fTeritaryColor,
    title: Container(
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'جستجو ...',
        ),
      ),
    ),
  );
}
