import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:foodservice/model/content_model.dart';
import 'package:foodservice/size_configs.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: fSecondaryColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Container(
                        height: sizeV * 35,
                        padding: EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          color: fPrimaryColor,
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Image.asset(contents[i].image),
                      ),
                      SizedBox(height: sizeV * 4),
                      Text(
                        contents[i].title,
                        style: fOnBoardingTitle,
                      ),
                      SizedBox(height: sizeV * 2),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: fOnBoardingDescription,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: sizeV * 7.5,
            margin: EdgeInsets.all(40),
            decoration: fOnBoardingButtonContainer,
            child: TextButton(
              child: Text(
                currentIndex == contents.length - 1 ? 'ادامه' : 'بعدی',
                style: fOnBoardingButton,
              ),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Get.offNamed(
                    '/auth',
                  );
                }
                _controller.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut);
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: fPrimaryColor,
      ),
    );
  }
}
