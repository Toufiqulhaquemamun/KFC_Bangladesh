import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/core/constants/colors.dart';
import '../../../infrastructure/dal/daos/view_models/otp_viewmodel.dart';
import 'widgets/btn_continue.dart';
import 'widgets/form_otp.dart';
import 'widgets/title_message.dart';

class OtpScreen extends GetView<OtpViewModel> {
  static const String routeName = '/OTP';

  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            stretch: true,
            excludeHeaderSemantics: true,
            floating: true,
            elevation: 0,
            backgroundColor: KFC_RED,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'OTP Verification',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 30,
                ),
              ),
              centerTitle: false,
              titlePadding: const EdgeInsets.fromLTRB(10, 20, 5, 10),
            ),
            pinned: true,
            centerTitle: false,
            expandedHeight: h * 0.55,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: KFC_RED,
                  child: Stack(
                    children: [
                      Container(
                        width: w,
                        height: h * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(30),
                            topEnd: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
                          child: Column(
                            children: [
                              TitleMessage(),
                              FormOtp(),
                              SizedBox(height: 20),
                              BtnContinue(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
