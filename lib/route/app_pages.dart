
import 'package:flutterapp/binding/app_binding.dart';
import 'package:flutterapp/route/app_route.dart';
import 'package:flutterapp/screens/home_screen.dart';
import 'package:flutterapp/screens/login_screen.dart';
import 'package:flutterapp/screens/sineup_screen.dart';
import 'package:get/get.dart';
class AppPages
{

  static String INITIAL_ROUTE =AppRoute.LOGIN_ROUTE;
  static final pages =
  [
    GetPage(
        name:AppRoute.LOGIN_ROUTE,
        page: ()=>LoginScreen(),
        binding: AppBinding()
    ),
    GetPage(
        name:AppRoute.SINEUP_ROUTE,
        page: ()=>SignUpScreen(),
        binding: AppBinding()
    ),
    GetPage(
        name:AppRoute.HOME_ROUTE,
        page: ()=>HomeScreen(),
        binding: AppBinding()
    ),
  ];


}