import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodservice/app_styles.dart';
import 'package:foodservice/controllers/authController.dart';
import 'package:foodservice/size_configs.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    print(Get.find<AuthController>().isActiveButton.value);

    void Authenticate() async {
      try {
        // var url = Uri.http('apiUrl', '/api/auth/$authInput');
        // var response = await http.post(url);
        // Get.toNamed('/code');
        Get.offNamed('/home');
      } catch (e) {
        print('caught error: $e');
      }
    }

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 15, 40, 20),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Column(children: [
                  Container(
                    height: sizeV * 35,
                    child: Image.asset(
                      'assets/images/user_auth.png',
                    ),
                  ),
                ]),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'ورود به فود سرویس',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: sizeV * 2),
                    Container(
                      child: TextField(
                        onChanged: (value) {
                          Get.find<AuthController>().changeInputVal(value);
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^0[0-9]*')),
                        ],
                        // controller: Get.find<AuthController>().authInput,
                        decoration: fAuthInput,
                      ),
                    ),
                    SizedBox(height: sizeV * 2),
                    Obx(
                      () => Container(
                        width: double.infinity,
                        height: sizeV * 6.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          onPressed:
                              Get.find<AuthController>().isActiveButton.value
                                  ? () {
                                      Authenticate();
                                    }
                                  : null,
                          child: Text(
                            'ورود',
                            style: TextStyle(fontSize: 20),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: fSecondaryColor,
                            onSurface: Colors.grey,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('با قوانین فود سرویس موافقم'),
                          Obx(
                            () => Checkbox(
                              checkColor: Colors.white,
                              value: Get.find<AuthController>().ruleCheck.value,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              activeColor: fSecondaryColor,
                              onChanged: (bool? value) {
                                Get.find<AuthController>().ToggleRule();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
