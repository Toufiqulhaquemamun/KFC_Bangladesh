import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/dal/daos/view_models/home_viewmodel.dart';
import 'widgets/body.dart';
import 'widgets/footer.dart';
import 'widgets/header.dart';

class HomeScreen extends GetView<HomeViewModel> {
  static const String routeName = '/Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SizedBox(height: 40),
              Body(),
              SizedBox(height: 20),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
