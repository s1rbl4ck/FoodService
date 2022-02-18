import 'package:flutter/material.dart';

class Slider {
  String imageUrl;
  String title;

  Slider({
    required this.imageUrl,
    required this.title,
  });
}

List<Slider> SliderItems = [
  Slider(
    title: 'عنوان فروشگاه یا رستوران اول',
    imageUrl: 'assets/images/sliderImage1.jpg',
  ),
  Slider(
    title: 'عنوان فروشگاه یا رستوران دوم',
    imageUrl: 'assets/images/sliderImage2.jpg',
  ),
  Slider(
    title: 'عنوان فروشگاه یا رستوران سوم',
    imageUrl: 'assets/images/sliderImage3.jpg',
  ),
  Slider(
    title: 'عنوان فروشگاه یا رستوران چهارم',
    imageUrl: 'assets/images/sliderImage4.jpg',
  ),
];

final List<Widget> imageSliders = SliderItems.map(
  (item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.asset(item.imageUrl, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  item.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
).toList();
