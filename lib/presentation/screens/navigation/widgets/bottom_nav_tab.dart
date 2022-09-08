import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavTab extends StatelessWidget {
  final int currentTab;
  final Function()? press;
  final int? selectedTab;
  final String? tabText;
  final String? tabImg;

  const BottomNavTab({
    Key? key,
    required this.currentTab,
    this.press,
    this.selectedTab,
    this.tabText,
    this.tabImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: new CircleBorder(),
      onTap: press,
      child: Container(
        width: 65,
        // height: 100,
        decoration: BoxDecoration(
          // color: Colors.green,
          borderRadius: BorderRadius.circular(100),
          // shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
            Image.asset(
              tabImg!,
              fit: BoxFit.cover,
              width: 20,
              height: 20,
            ),
            SizedBox(height: 10),
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
        ),
      ),
    );
  }
}
