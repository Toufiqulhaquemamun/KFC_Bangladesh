import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kfc_design/presentation/screens/cart/widgets/btn_checkout.dart';

import '../../../infrastructure/core/constants/colors.dart';
import '../../../infrastructure/dal/daos/view_models/cart_viewmodel.dart';
import '../navigation/widgets/my_widget.dart';
import 'widgets/cart_item_container.dart';

class CartScreen extends GetView<CartViewModel>  {


  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: w,
          height: h * 0.2,
          decoration: BoxDecoration(
            color: KFC_RED,
            borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(20),
              bottomEnd: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/kfc_imgs/kfc_logo.png", width: 140),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'DELIVERY TIME ASAP',
                  style: TextStyle(
                    // fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
          child: Text(
            'ORDER SUMMARY',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CartItemContainer(),
        BtnCheckout(),
      ],
    );
  }
}
