import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fade_shimmer/fade_shimmer.dart';

class ShimmerFoodWidget extends StatelessWidget {
  const ShimmerFoodWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: Get.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFecf0f1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  child: FadeShimmer(
                    width: 100,
                    height: 100,
                    fadeTheme: FadeTheme.light,
                    millisecondsDelay: 800,
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeShimmer(
                        width: 150,
                        height: 10,
                        fadeTheme: FadeTheme.light,
                        radius: 3,
                        millisecondsDelay: 800,
                      ),
                      SizedBox(height: 15),
                      FadeShimmer(
                        width: 180,
                        height: 8,
                        fadeTheme: FadeTheme.light,
                        radius: 2,
                        millisecondsDelay: 800,
                      ),
                      SizedBox(height: 10),
                      FadeShimmer(
                        width: 200,
                        height: 8,
                        fadeTheme: FadeTheme.light,
                        radius: 2,
                        millisecondsDelay: 800,
                      ),
                      SizedBox(height: 10),
                      FadeShimmer(
                        width: 210,
                        height: 8,
                        fadeTheme: FadeTheme.light,
                        radius: 2,
                        millisecondsDelay: 800,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
