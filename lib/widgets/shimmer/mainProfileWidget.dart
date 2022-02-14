import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fade_shimmer/fade_shimmer.dart';

class ShimmerProfilesWidget extends StatelessWidget {
  const ShimmerProfilesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 75,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(8, 2, 8, 2),
      decoration: BoxDecoration(
        color: Color(0xFFecf0f1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var delay = (index * 300);

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: FadeShimmer.round(
                    size: 55,
                    fadeTheme: FadeTheme.light,
                    millisecondsDelay: delay,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: FadeShimmer.round(
                    size: 55,
                    fadeTheme: FadeTheme.light,
                    millisecondsDelay: delay,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: FadeShimmer.round(
                    size: 55,
                    fadeTheme: FadeTheme.light,
                    millisecondsDelay: delay,
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: 3),
    );
  }
}
