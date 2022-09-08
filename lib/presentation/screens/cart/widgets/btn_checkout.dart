import 'package:flutter/material.dart';

import '../../../../infrastructure/core/constants/colors.dart';

class BtnCheckout extends StatelessWidget {
  const BtnCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return ButtonTheme(
      minWidth: w,
      height: w < h ? (w * .12) : (w * .06),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
        child: RaisedButton(
          color: KFC_RED,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
            // controller.validateForm(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Checkout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w < h ? (w * .05) : (w * .03),
                ),
              ),
              Text(
                "Tk. 3200",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w < h ? (w * .05) : (w * .03),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
