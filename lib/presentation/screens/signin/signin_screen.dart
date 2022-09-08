import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../../infrastructure/core/constants/colors.dart';
import '../../../infrastructure/dal/daos/view_models/signin_viewmodel.dart';
import 'widgets/form_signin.dart';
import 'widgets/title_message.dart';

class SignInScreen extends GetView<SignInViewModel> {
  static const String routeName = '/SignIn';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            excludeHeaderSemantics: true,
            floating: true,
            elevation: 0,
            backgroundColor: KFC_RED,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Sign Up',
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
            expandedHeight: h * 0.25,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: KFC_RED,
                  // height: h * 0.1,
                  child: Stack(
                    children: [
                      Container(
                        height: h * 0.75,
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
                              FormSignIn(),
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
