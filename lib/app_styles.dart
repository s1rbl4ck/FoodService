import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import './size_configs.dart';

Color fPrimaryColor = Color(0xFFffffff);
Color fPrimaryColorBlured = Color(0xFFffffff).withOpacity(0.5);
// Color fPrimaryBackgroundDefault = ;
Color fSecondaryColor = Color(0xFFffcc2a);
Color fTeritaryColor = Color(0xFF34495e);
Color fTertiary = Color(0xFFF1F1FB);

final fOnBoardingTitle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: SizeConfig.blockSizeH! * 6,
);

final fOnBoardingDescription = TextStyle(
  color: Color(0xFF5f4709),
  fontSize: SizeConfig.blockSizeH! * 4.6,
  fontWeight: FontWeight.bold,
);

final fOnBoardingButtonContainer = BoxDecoration(
  color: fPrimaryColor,
  borderRadius: BorderRadius.circular(20),
);

final fOnBoardingButton = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

final fAuthInput = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(17),
    borderSide: BorderSide(
      color: fTertiary,
      width: 2,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(17),
    borderSide: BorderSide(
      color: fSecondaryColor,
      width: 2,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(17),
    borderSide: BorderSide(
      color: fSecondaryColor,
      width: 2,
    ),
  ),
  hintText: '0 9 * * * * * * * * *',
  contentPadding: EdgeInsets.all(15),
  suffixIcon: Container(
    margin: EdgeInsets.only(right: 20),
    child: Icon(
      Icons.phone,
      color: fSecondaryColor,
    ),
  ),
);
