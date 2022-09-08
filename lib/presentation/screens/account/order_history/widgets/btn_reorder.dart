import 'package:flutter/material.dart';

import '../../../../../infrastructure/core/constants/colors.dart';

class BtnReorder extends StatelessWidget {
  const BtnReorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return ButtonTheme(
      minWidth: w * 0.32,
      height: w < h ? (w * .05) : (w * .06),
      child: RaisedButton(
        color: KFC_RED,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        onPressed: () {
          // controller.validateForm(context);
        },
        child: Text(
          "Re-order",
          style: TextStyle(
            color: Colors.white,
            fontSize: w < h ? (w * .04) : (w * .03),
          ),
        ),
      ),
    );
  }
}
