import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kfc_design/presentation/screens/splash/splash_screen.dart';


import 'infrastructure/dal/services/service_locator.dart';
import 'infrastructure/navigation/bindings/splash_binding.dart';
import 'infrastructure/navigation/routes/routes.dart';

void main() async {
  await initServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KFC BD',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.full,
      // initialRoute: Routes.splash,
      initialBinding: SplashBinding(),
      home: SplashScreen(),
      getPages: Routes.pages,
    );
  }
}
