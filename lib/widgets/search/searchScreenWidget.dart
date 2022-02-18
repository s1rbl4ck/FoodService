import 'package:flutter/material.dart';
import 'package:foodservice/widgets/search/searchItemWidget.dart';
import 'package:get/get.dart';

class SearchScreenWidget extends StatefulWidget {
  const SearchScreenWidget({Key? key}) : super(key: key);

  @override
  State<SearchScreenWidget> createState() => _SearchScreenWidgetState();
}

class _SearchScreenWidgetState extends State<SearchScreenWidget> {
  @override
  Widget build(BuildContext context) {
    double TextWidth = MediaQuery.of(context).size.width * 0.55;
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        child: Column(
          children: [
            SearchItemWidget(
              textWidth: TextWidth,
              title: 'رستوران اول',
              description:
                  'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است',
              imageUrl: 'assets/images/sliderImage1.jpg',
            ),
            SearchItemWidget(
              textWidth: TextWidth,
              title: 'رستوران اول',
              description:
                  'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است',
              imageUrl: 'assets/images/sliderImage2.jpg',
            ),
            SearchItemWidget(
              textWidth: TextWidth,
              title: 'رستوران اول',
              description:
                  'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است',
              imageUrl: 'assets/images/sliderImage3.jpg',
            ),
            SearchItemWidget(
              textWidth: TextWidth,
              title: 'رستوران اول',
              description:
                  'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است',
              imageUrl: 'assets/images/sliderImage4.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
