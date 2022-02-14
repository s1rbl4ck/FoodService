import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fade_shimmer/fade_shimmer.dart';

class ShimmerBannerWidget extends StatelessWidget {
  const ShimmerBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFecf0f1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: FadeShimmer(
        height: 180,
        width: 150,
        radius: 8,
        fadeTheme: FadeTheme.light,
      ),
    );
  }
}
