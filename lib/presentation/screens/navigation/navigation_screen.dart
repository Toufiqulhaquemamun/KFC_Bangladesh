import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/dal/daos/view_models/navigation_viewmodel.dart';
import 'widgets/bottom_navbar.dart';

class NavigationScreen extends GetView<NavigationViewModel> {
  static const String routeName = '/Navigation';

  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => PageStorage(
          bucket: controller.bucket,
          child: controller.currentScreen,
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   elevation: 5,
      //   child: Icon(Icons.fastfood, size: 30),
      //   onPressed: () {},
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SafeArea(child: BottomNavBar()),
    );
  }
}
