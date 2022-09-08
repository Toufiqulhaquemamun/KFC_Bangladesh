import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/core/constants/colors.dart';
import '../../../../../infrastructure/dal/daos/view_models/home_viewmodel.dart';
import '../../../navigation/navigation_screen.dart';

class BtnDelivery extends GetView<HomeViewModel> {
  const BtnDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return ButtonTheme(
      minWidth: w,
      height: w < h ? (w * .12) : (w * .06),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
        child: RaisedButton(
          color: KFC_RED,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () async {
            // controller.validateForm(context);
            // LocationResult result = await GMapScreen.mapView(context);
            // debugPrint('Delivery_location: ${result.address}');
            await Future.delayed(Duration(seconds: 1), () async {
              Get.toNamed(NavigationScreen.routeName);
            });
          },
          child: Text(
            "Delivery",
            style: TextStyle(
              color: Colors.white,
              fontSize: w < h ? (w * .055) : (w * .03),
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
