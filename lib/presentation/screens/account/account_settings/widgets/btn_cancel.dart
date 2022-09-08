import 'package:flutter/material.dart';

class BtnCancel extends StatelessWidget {
  const BtnCancel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return ButtonTheme(
      minWidth: w * 0.3,
      height: w < h ? (w * .09) : (w * .06),
      child: RaisedButton(
        color: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          // controller.validateForm(context);
        },
        child: Text(
          "Cancel",
          style: TextStyle(
            color: Colors.black54,
            fontSize: w < h ? (w * .04) : (w * .03),
          ),
        ),
      ),
    );
  }
}
