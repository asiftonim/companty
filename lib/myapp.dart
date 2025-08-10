import 'package:company/routs/app_page.dart';
import 'package:company/routs/app_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/splash/view/page/splash_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.routes,
    );
  }
}

