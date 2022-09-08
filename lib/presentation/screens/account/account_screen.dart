import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kfc_design/presentation/screens/navigation/widgets/my_widget.dart';

import '../../../infrastructure/core/constants/colors.dart';
import '../../../infrastructure/dal/daos/view_models/account_viewmodel.dart';
import 'account_settings/account_settings_screen.dart';
import 'order_history/order_history_screen.dart';

class AccountScreen extends GetView<AccountViewModel> {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: w,
          height: h * 0.3,
          decoration: BoxDecoration(
            color: KFC_RED,
            borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(20),
              bottomEnd: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 65),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 30),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/colonel_logo.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Mr. John',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 33),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
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
              OrderHistoryScreen(),
              AccountSettingsScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
