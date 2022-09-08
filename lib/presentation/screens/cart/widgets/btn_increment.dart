import 'package:flutter/material.dart';

class BtnIncrement extends StatelessWidget {
  const BtnIncrement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return ButtonTheme(
      padding: EdgeInsets.zero,
      minWidth: w * 0.05,
      height: w < h ? (w * .05) : (w * .06),
      child: RaisedButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 0.7),
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          // controller.validateForm(context);
        },
        child: Text(
          "+",
          style: TextStyle(
            color: Colors.black,
            fontSize: w < h ? (w * .04) : (w * .03),
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
