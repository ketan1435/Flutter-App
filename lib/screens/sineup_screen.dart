import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/common_widget/common_button.dart';
import 'package:flutterapp/controller/login_controller.dart';
import 'package:flutterapp/controller/sineup_controller.dart';
import 'package:flutterapp/screens/home_screen.dart';
import 'package:flutterapp/screens/login_screen.dart';
import 'package:flutterapp/utils/colors.dart';
import 'package:flutterapp/utils/textstyle.dart';
import 'package:get/get.dart';

import '../common_widget/textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpController signUpController = Get.find();
  GlobalKey<FormState> formKeys = GlobalKey<FormState>();
  GlobalKey<NavigatorState> loginNavigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 170,
          ),
          Form(
            key: formKeys,
            child: Column(
              children: [
                TextFields(
                  name: "Enter Your Name",
                  controller: signUpController.nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Name";
                    }
                    return null;
                  },
                ),
                TextFields(
                  name: "Enter Your Email",
                  controller: signUpController.emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Email";
                    }
                    return null;
                  },
                ),
                TextFields(
                  name: "Enter Your Password",
                  controller: signUpController.passController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Password";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                CommonButton(
                  name: "SignUp",
                  onpress: (){
                    if (formKeys.currentState!.validate()) {
                      Get.to(LoginScreen(key: loginNavigatorKey));
                    }
                  },
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account?? ",
                        style: TextHelper.h7,
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(LoginScreen(key: loginNavigatorKey));
                          },
                        text: "Login Here",
                        style: TextHelper.h7.copyWith(color: AppColor.containerColor1),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
