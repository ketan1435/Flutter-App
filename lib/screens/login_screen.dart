import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/common_widget/common_button.dart';
import 'package:flutterapp/common_widget/textfield.dart';
import 'package:flutterapp/controller/login_controller.dart';
import 'package:flutterapp/screens/home_screen.dart';
import 'package:flutterapp/screens/sineup_screen.dart';
import 'package:flutterapp/utils/textstyle.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>(); // Unique key for LoginScreen
  GlobalKey<NavigatorState> signUpNavigatorKey = GlobalKey<NavigatorState>();
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 210,),
          Form(
            key: formKey,
            child: Column(
              children: [
                TextFields(
                  name: "Enter Your Email",
                  controller: loginController.email,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Your Email";
                    }
                    return null;
                  },
                ),
                TextFields(
                  name: "Enter Your Password",
                  controller: loginController.pass,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Your Password";
                    }
                    return null;
                  },
                ),
                CommonButton(
                  name: "Login",
                  onpress: () {
                    if (formKey.currentState!.validate()) {
                      Get.to(
                        HomeScreen(
                          key: homeNavigatorKey,
                        ),
                      );
                    }
                  },
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account ",
                        style: TextHelper.h7,
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(
                              SignUpScreen(
                                key: signUpNavigatorKey,
                              ),
                            );
                          },
                        text: "SignUp Here",
                        style: TextHelper.h7.copyWith(color: AppColor.containerColor1),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
