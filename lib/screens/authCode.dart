import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodservice/app_styles.dart';
import 'package:foodservice/controllers/authController.dart';
import 'package:foodservice/size_configs.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pinput/pin_put/pin_put.dart';

class AuthCodeScreen extends StatefulWidget {
  @override
  State<AuthCodeScreen> createState() => _AuthCodeScreenState();
}

class _AuthCodeScreenState extends State<AuthCodeScreen> {
  // Auth Controller
  var inst = Get.find<AuthController>();
  // Pin Input Functions
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: fSecondaryColor, width: 2),
      borderRadius: BorderRadius.circular(5.0),
    );
  }

  late Timer incrementCode;

  incrementCodeResend() {
    // incrementCode.cancel();
    incrementCode = Timer.periodic(Duration(seconds: 1), (timer) {
      if (inst.timeOut.value < 0) {
        incrementCode.cancel();
      } else {
        inst.incrementTimeOut(inst.timeOut.value - 1);
      }
    });
  }

  editNumber() {
    incrementCode.cancel();
    Get.back();
  }

  @override
  void initState() {
    incrementCodeResend();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Size
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;

    void Authenticate(pin) async {
      try {
        // var url = Uri.http('apiUrl', '/api/auth/$authInput');
        // var response = await http.post(url);
        // Get.toNamed('/code');
        Get.snackbar(
          'شما با موفقیت وارد شدید',
          pin,
          margin: EdgeInsets.all(sizeV * 2),
          backgroundColor: fSuccess.withOpacity(0.7),
          titleText: const Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'شما با موفقیت وارد شدید',
            ),
          ),
          messageText: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              pin,
            ),
          ),
        );
        Future.delayed(Duration(seconds: 2), () {
          Get.offAllNamed('/infoGet');
        });
      } catch (e) {
        print('caught error: $e');
      }
    }

    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          editNumber();
          return false;
        },
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
                        'کد دریافت شده را وارد کنید',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: sizeV * 2),
                      Container(
                        child: PinPut(
                          fieldsCount: 5,
                          onChanged: (String pin) => inst.changePinCode(pin),
                          onSubmit: (String pin) => Authenticate(pin),
                          focusNode: _pinPutFocusNode,
                          controller: _pinPutController,
                          submittedFieldDecoration: _pinPutDecoration.copyWith(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          selectedFieldDecoration: _pinPutDecoration,
                          followingFieldDecoration: _pinPutDecoration.copyWith(
                            borderRadius: BorderRadius.circular(5.0),
                            border:
                                Border.all(color: fSecondaryColor, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: sizeV * 2),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45,
                              margin: EdgeInsets.only(right: 5),
                              child: TextButton.icon(
                                onPressed: () {
                                  editNumber();
                                },
                                icon: Icon(Ionicons.chevron_back_outline,
                                    size: 25),
                                label: Text(
                                  'اصلاح شماره',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              margin: EdgeInsets.only(left: 5),
                              child: Obx(
                                () => ElevatedButton(
                                  onPressed: inst.timeOut.value < 0
                                      ? () {
                                          inst.incrementTimeOut(CodeTimeOut);
                                          incrementCodeResend();
                                        }
                                      : null,
                                  child: Text(
                                    inst.timeOut.value < 0
                                        ? 'ارسال مجدد کد'
                                        : inst.timeOut.value.toString() +
                                            'ارسال مجدد ',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: fSecondaryColor,
                                    onSurface: fTeritaryColor,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
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
      ),
    );
  }
}
