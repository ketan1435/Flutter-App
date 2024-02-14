import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutterapp/binding/app_binding.dart';
import 'package:flutterapp/route/app_pages.dart';
import 'package:flutterapp/utils/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:KTheme.lightheme,
      darkTheme: KTheme.darkheme,
      themeMode:ThemeMode.system,

      getPages:AppPages.pages,
      initialRoute: AppPages.INITIAL_ROUTE,
      initialBinding: AppBinding(),
    );
  }
}

