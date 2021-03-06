import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:foodservice/controllers/homeController.dart';
import 'package:foodservice/model/sliderModel.dart';
import 'package:foodservice/widgets/home/categories.dart';
import 'package:foodservice/widgets/home/foodItem.dart';
import 'package:foodservice/widgets/home/restaurantItem.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    // Home Controller
    var inst = Get.find<HomeController>();

    return SingleChildScrollView(
      child: Column(
        children: [
          // Home Banners
          Container(
            width: Get.width,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: CarouselSlider(
                      items: imageSliders,
                      carouselController: inst.sliderController,
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          inst.setCurrentSlide(index);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: Get.width,
            height: 90,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.fromLTRB(8, 2, 8, 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoriesWidget(
                  imageUrl: 'assets/images/hamburger.png',
                  name: '?????? ??????',
                ),
                CategoriesWidget(
                  imageUrl: 'assets/images/restaurant.png',
                  name: '??????????????',
                ),
                CategoriesWidget(
                  imageUrl: 'assets/images/traditional.png',
                  name: '???????? ??????????',
                ),
                CategoriesWidget(
                  imageUrl: 'assets/images/cafe.png',
                  name: '????????',
                ),
                CategoriesWidget(
                  imageUrl: 'assets/images/fruits.png',
                  name: '????????',
                ),
                CategoriesWidget(
                  imageUrl: 'assets/images/shops.png',
                  name: '??????????????????',
                ),
                CategoriesWidget(
                  imageUrl: 'assets/images/cake.png',
                  name: '????????????',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '?????????????? ???????? ????',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Wrap(
                  children: [
                    Text('???????????? ??????????'),
                    Icon(Icons.chevron_right_outlined)
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 320,
            margin: EdgeInsets.all(10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RestaurantItem(
                  title: '?????????????? ????????????????',
                  category: '??????????????',
                  description:
                      '???????? ???????????? ?????? ???????????? ???? ?????????? ?????????? ?????????????? ???? ???????? ?????? ?? ???? ?????????????? ???? ???????????? ???????????? ??????',
                  coverImageUrl: 'assets/images/restaurant_cover.jpg',
                  imageUrl: 'assets/images/default_profiles.png',
                  isOpened: true,
                  deliveryPrice: '10,000 ??????????',
                  distance: '1 ??????????????',
                ),
                RestaurantItem(
                  title: '?????? ???????? ????????????',
                  category: '?????? ??????',
                  description:
                      '???????? ???????????? ?????? ???????????? ???? ?????????? ?????????? ?????????????? ???? ???????? ?????? ?? ???? ?????????????? ???? ???????????? ???????????? ??????',
                  coverImageUrl: 'assets/images/fastfood_cover.jpg',
                  imageUrl: 'assets/images/default_profiles.png',
                  isOpened: false,
                  deliveryPrice: '????????????',
                  distance: '600 ??????',
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '???????? ???????? ?????? ??????',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Wrap(
                  children: [
                    Text('???????????? ??????????'),
                    Icon(Icons.chevron_right_outlined)
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 285,
            margin: EdgeInsets.all(10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FoodItem(
                  name: '?????????? ????????????',
                  imageUrl: 'assets/images/pizzaProduct.png',
                  price: '56,000',
                  category: '?????? ??????',
                ),
                FoodItem(
                  name: '???????????? ??????????',
                  imageUrl: 'assets/images/burger.png',
                  price: '42,500',
                  category: '?????? ??????',
                ),
                FoodItem(
                  name: '???????????? ???????????? ?? ??????',
                  imageUrl: 'assets/images/sandwitch.png',
                  price: '25,000',
                  category: '?????? ??????',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
