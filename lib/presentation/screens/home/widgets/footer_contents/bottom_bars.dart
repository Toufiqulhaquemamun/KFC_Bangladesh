import 'package:flutter/material.dart';

import '../../../../../infrastructure/core/constants/colors.dart';

class BottomBars extends StatelessWidget {
  const BottomBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 35,
          height: 25,
          color: KFC_RED,
        ),
        Container(
          width: 35,
          height: 25,
          color: Colors.white,
        ),
        Container(
          width: 35,
          height: 25,
          color: KFC_RED,
        ),
        Container(
          width: 35,
          height: 25,
          color: Colors.white,
        ),
        Container(
          width: 35,
          height: 25,
          color: KFC_RED,
        ),
      ],
    );
  }
}
