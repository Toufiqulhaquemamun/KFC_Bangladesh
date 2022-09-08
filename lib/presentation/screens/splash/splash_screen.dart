import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kfc_design/presentation/screens/splash/widgets/branding.dart';


import '../../../infrastructure/core/constants/colors.dart';
import '../../../infrastructure/dal/daos/view_models/splash_viewmodel.dart';
import 'widgets/row_of_dot_circle.dart';

class SplashScreen extends GetView<SplashViewModel> {
  static const String routeName = '/Splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KFC_RED,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Branding(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: RowOfDotCircle(rowCount: controller.dotCount),
            ),
          ),
        ],
      ),
    );
  }
}
