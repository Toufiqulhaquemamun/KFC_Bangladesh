import 'package:flutter/material.dart';

class Branding extends StatelessWidget {
  const Branding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Image.asset("assets/kfc_imgs/kfc_logo.png", width: 200),
      ),
    );
  }
}
