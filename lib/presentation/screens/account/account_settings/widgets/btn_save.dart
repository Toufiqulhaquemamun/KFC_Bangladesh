import 'package:flutter/material.dart';

import '../../../../../infrastructure/core/constants/colors.dart';

class BtnSave extends StatelessWidget {
  const BtnSave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return ButtonTheme(
      minWidth: w * 0.3,
      height: w < h ? (w * .09) : (w * .06),
      child: RaisedButton(
        color: KFC_RED,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          // controller.validateForm(context);
        },
        child: Text(
          "Save",
          style: TextStyle(
            color: Colors.white,
            fontSize: w < h ? (w * .04) : (w * .03),
          ),
        ),
      ),
    );
  }
}
