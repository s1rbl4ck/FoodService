import 'package:flutter/material.dart';
import 'package:foodservice/app_styles.dart';
import 'package:foodservice/controllers/authController.dart';
import 'package:foodservice/size_configs.dart';
import 'package:get/get.dart';

class infoGetScreen extends StatelessWidget {
  infoGetScreen({Key? key}) : super(key: key);
  // Auth Controller
  var inst = Get.find<AuthController>();

  submitInfo() {
    Get.offAllNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    // Size
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  // width: ,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'نام و نام خانوادگی',
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10),
                                border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(
                            'ایمیل',
                            textAlign: TextAlign.right,
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10),
                                border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              Container(
                width: Get.width,
                height: 45,
                child: ElevatedButton(
                  onPressed: inst.isActiveButton.value
                      ? () {
                          submitInfo();
                        }
                      : null,
                  child: Text(
                    'ثبت اطلاعات',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: fSecondaryColor,
                    onSurface: Colors.grey,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
