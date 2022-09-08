import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/core/constants/colors.dart';
import '../../../../infrastructure/dal/daos/view_models/otp_viewmodel.dart';

class BtnContinue extends GetView<OtpViewModel> {
  const BtnContinue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return ButtonTheme(
      minWidth: w,
      height: w < h ? (w * .12) : (w * .06),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(80, 20, 80, 10),
        child: RaisedButton(
          color: KFC_RED,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
            controller.validateForm(context);
          },
          child: Text(
            "Continue",
            style: TextStyle(
              color: Colors.white,
              fontSize: w < h ? (w * .05) : (w * .03),
            ),
          ),
        ),
      ),
    );
  }
}
