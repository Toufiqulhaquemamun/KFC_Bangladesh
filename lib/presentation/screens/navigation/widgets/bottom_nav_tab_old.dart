import 'package:flutter/material.dart';

import '../../../../infrastructure/core/constants/colors.dart';

class BottomNavTabOld extends StatelessWidget {
  final int currentTab;
  final Function()? press;
  final int? selectedTab;
  final String? tabText;
  final IconData? tabIcon;

  const BottomNavTabOld({
    Key? key,
    required this.currentTab,
    this.press,
    this.selectedTab,
    this.tabText,
    this.tabIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    if (selectedTab == 0) {
      return Column(
        children: [
          IconButton(
            icon: Icon(
              tabIcon,
              // size: 30,
              color: Colors.transparent,
            ),
            onPressed: press,
          ),
          Text(
            tabText!,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: currentTab == selectedTab ? Colors.black : Colors.grey,
              // fontSize: w < h ? (w * .035) : (w * .022),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          IconButton(
            icon: Icon(
              tabIcon,
              // size: 30,
              color: currentTab == selectedTab ? KFC_RED : Colors.red.shade200,
            ),
            onPressed: press,
          ),
          Text(
            tabText!,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: currentTab == selectedTab ? Colors.black : Colors.grey,
              // fontSize: w < h ? (w * .035) : (w * .022),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      );
    }
  }
}
