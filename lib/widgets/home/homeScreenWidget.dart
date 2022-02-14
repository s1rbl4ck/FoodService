import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:foodservice/widgets/home/profilesWidget.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFecf0f1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 180.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                pauseAutoPlayOnTouch: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: fPrimaryColor),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/foodBanner.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ),
        Container(
          width: Get.width,
          height: 85,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(8, 2, 8, 2),
          decoration: BoxDecoration(
            color: Color(0xFFecf0f1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              profileWidget(
                  imageUrl: 'assets/images/default_profiles.png',
                  name: 'رستوران اول'),
              profileWidget(
                  imageUrl: 'assets/images/default_profiles.png',
                  name: 'دومین رستوران'),
              profileWidget(
                  imageUrl: 'assets/images/default_profiles.png',
                  name: 'فست فودی سوم'),
              profileWidget(
                  imageUrl: 'assets/images/default_profiles.png',
                  name: 'فروشگاه چهارم'),
            ],
          ),
        ),
      ],
    );
  }
}
