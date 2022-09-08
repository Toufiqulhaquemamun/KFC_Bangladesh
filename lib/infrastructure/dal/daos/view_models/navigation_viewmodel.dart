import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';

import '../../../../presentation/screens/account/account_screen.dart';
import '../../../../presentation/screens/cart/cart_screen.dart';
import '../../../../presentation/screens/gmap/gmap_screen.dart';
import '../../../../presentation/screens/home/home_screen.dart';
import '../../../../presentation/screens/menu/menu_screen.dart';
import '../../../../presentation/screens/navigation/widgets/my_widget.dart';

class NavigationViewModel extends GetxController {
  final PageStorageBucket _bucket = PageStorageBucket();
  var _currentScreen = MyWidget().obs;
  var _pageIndex = 0.obs;
  final List<Widget> screens = [
    MenuScreen(),
    AccountScreen(),
    CartScreen(),
  ];

  @override
  void onInit() {
    loadSelectedPage(Get.context);
    super.onInit();
  }

  PageStorageBucket get bucket => _bucket;

  int get pageIndex => _pageIndex.value;

  Widget get currentScreen => _currentScreen.value;

  void updatePageIndex(int i) => _pageIndex.value = i;

  void updateCurrentScreen(MyWidget w) => _currentScreen.value = w;

  loadSelectedPage(BuildContext context) {
    _currentScreen.value = (pageIndex == 0)
        ? MenuScreen()
        : (pageIndex == 1)
            ? AccountScreen()
            : (pageIndex == 2)
                ? CartScreen()
                : (pageIndex == 3)
                    ? _moveToHome()
                    : (pageIndex == 4)
                        ? _loadGMap(context)
                        : MenuScreen();
  }

  _moveToHome() async {
    await Future.delayed(Duration(seconds: 1), () {
      Get.offAll(HomeScreen.routeName);
    });
  }

  _loadGMap(BuildContext context) async {
    LocationResult result = await GMapScreen.mapView(context);
    debugPrint('Delivery_location: ${result.address}');
  }
}
