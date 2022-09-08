import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/dal/daos/view_models/navigation_viewmodel.dart';
import '../../account/account_screen.dart';
import '../../cart/cart_screen.dart';
import '../../menu/menu_screen.dart';
import 'bottom_nav_tab.dart';

class BottomNavBar extends GetView<NavigationViewModel> {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.grey.shade200,
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        height: 100,
        child: Obx(
          () => Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: BottomNavTab(
                      currentTab: controller.pageIndex,
                      selectedTab: 3,
                      tabText: "Home",
                      tabImg: "assets/kfc_imgs/home.png",
                      press: () async {
                        controller.updatePageIndex(3);
                        // await Future.delayed(Duration(seconds: 1), () {
                        //   Get.offAllNamed(HomeScreen.routeName);
                        // });
                      },
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: BottomNavTab(
                      currentTab: controller.pageIndex,
                      selectedTab: 4,
                      tabText: "Location",
                      tabImg: "assets/kfc_imgs/location.png",
                      press: () async {
                        controller.updatePageIndex(4);
                        // LocationResult result = await GMapScreen.mapView(context);
                        // debugPrint('Delivery_location: ${result.address}');
                      },
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Image.asset(
                      "assets/kfc_imgs/menu.png",
                      fit: BoxFit.cover,
                      height: 55,
                    ),
                    onPressed: () {
                      controller.updatePageIndex(0);
                      controller.updateCurrentScreen(MenuScreen());
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Menu',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: controller.pageIndex == 0
                            ? Colors.black
                            : Colors.grey,
                        // fontSize: w < h ? (w * .035) : (w * .022),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  // BottomNavTab(
                  //   currentTab: controller.pageIndex,
                  //   selectedTab: 0,
                  //   tabText: "Menu",
                  //   tabIcon: Icons.fastfood,
                  //   press: () {
                  //     controller.updatePageIndex(0);
                  //     controller.updateCurrentScreen(MenuScreen());
                  //   },
                  // ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: BottomNavTab(
                      currentTab: controller.pageIndex,
                      selectedTab: 1,
                      tabText: "Account",
                      tabImg: "assets/kfc_imgs/account.png",
                      press: () {
                        controller.updatePageIndex(1);
                        controller.updateCurrentScreen(AccountScreen());
                      },
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: BottomNavTab(
                      currentTab: controller.pageIndex,
                      selectedTab: 2,
                      tabText: "Cart",
                      tabImg: "assets/kfc_imgs/cart.png",
                      press: () {
                        controller.updatePageIndex(2);
                        controller.updateCurrentScreen(CartScreen());
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
