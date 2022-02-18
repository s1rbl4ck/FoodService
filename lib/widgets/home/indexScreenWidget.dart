import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:foodservice/controllers/homeController.dart';
import 'package:foodservice/model/sliderModel.dart';
import 'package:foodservice/widgets/home/categoriesWidget.dart';
import 'package:foodservice/widgets/home/foodItemWidget.dart';
import 'package:foodservice/widgets/home/restaurantItemWidget.dart';
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
    return Column(
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
                    carouselController:
                        Get.find<HomeController>().sliderController,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        Get.find<HomeController>().setCurrentSlide(index);
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
                name: 'فست فود',
              ),
              CategoriesWidget(
                imageUrl: 'assets/images/restaurant.png',
                name: 'رستوران',
              ),
              CategoriesWidget(
                imageUrl: 'assets/images/traditional.png',
                name: 'غذای خانگی',
              ),
              CategoriesWidget(
                imageUrl: 'assets/images/cafe.png',
                name: 'کافه',
              ),
              CategoriesWidget(
                imageUrl: 'assets/images/fruits.png',
                name: 'میوه',
              ),
              CategoriesWidget(
                imageUrl: 'assets/images/shops.png',
                name: 'سوپرمارکت',
              ),
              CategoriesWidget(
                imageUrl: 'assets/images/cake.png',
                name: 'شیرینی',
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
                'پرسفارش ترین ها',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Wrap(
                children: [
                  Text('مشاهده بیشتر'),
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
                title: 'رستوران کاپوچینو',
                category: 'رستوران',
                description:
                    'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است',
                coverImageUrl: 'assets/images/restaurant_cover.jpg',
                imageUrl: 'assets/images/default_profiles.png',
                isOpened: true,
                deliveryPrice: '10,000 تومان',
                distance: '1 کیلومتر',
              ),
              RestaurantItem(
                title: 'فست فودی رومانو',
                category: 'فست فود',
                description:
                    'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است',
                coverImageUrl: 'assets/images/fastfood_cover.jpg',
                imageUrl: 'assets/images/default_profiles.png',
                isOpened: false,
                deliveryPrice: 'رایگان',
                distance: '600 متر',
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
                'دسته بندی فست فود',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Wrap(
                children: [
                  Text('مشاهده بیشتر'),
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
                name: 'پیتزا پپرونی',
                imageUrl: 'assets/images/pizzaProduct.png',
                price: '56,000',
                category: 'فست فود',
              ),
              FoodItem(
                name: 'همبرگر زغالی',
                imageUrl: 'assets/images/burger.png',
                price: '42,500',
                category: 'فست فود',
              ),
              FoodItem(
                name: 'ژامبون کالباس و مرغ',
                imageUrl: 'assets/images/sandwitch.png',
                price: '25,000',
                category: 'فست فود',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
