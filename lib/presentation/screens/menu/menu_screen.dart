import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/core/constants/colors.dart';
import '../../../infrastructure/dal/daos/view_models/menu_viewmodel.dart';
import '../navigation/widgets/my_widget.dart';
import 'addons/addons_screen.dart';
import 'beverages/beverage_screen.dart';
import 'burger/burger_screen.dart';
import 'chicken/chicken_screen.dart';
import 'deals/deals_screen.dart';
import 'rice_bowl/rice_bowl_screen.dart';
import 'snacks/snakcs_screen.dart';

class MenuScreen extends GetView<MenuViewModel>  {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: w,
          height: h * 0.223,
          decoration: BoxDecoration(
            color: KFC_RED,
            borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(20),
              bottomEnd: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 50),
              Image.asset("assets/kfc_imgs/kfc_logo.png", width: 140),
              SizedBox(height: 10),
              Text(
                'Gulshan 1, Dhaka',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                alignment: Alignment.bottomLeft,
                child: TabBar(
                  controller: controller.tabController,
                  tabs: controller.itemTabs,
                  isScrollable: true,
                  labelColor: Colors.white,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3.0),
                    insets: EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  indicatorColor: Colors.black,
                  // indicatorWeight: 3,
                  // indicatorPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  // indicatorSize: TabBarIndicatorSize.tab,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: controller.tabController,
            children: [
              DealsScreen(),
              ChickenScreen(),
              BurgerScreen(),
              RiceBowlScreen(),
              SnacksScreen(),
              BeverageScreen(),
              AddonsScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
