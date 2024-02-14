

import 'package:flutterapp/controller/home_controller.dart';
import 'package:flutterapp/controller/login_controller.dart';
import 'package:flutterapp/controller/sineup_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class AppBinding extends Bindings
{
  @override
  void dependencies()
  {
   Get.lazyPut(() => LoginController());
   Get.lazyPut(() => SignUpController());
   Get.lazyPut(() => HomeController());
  }
}