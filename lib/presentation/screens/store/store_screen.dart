import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/dal/daos/view_models/store_viewmodel.dart';


class StoreScreen extends GetView<StoreViewModel> {
  static const String routeName = '/Store';
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(),
    );
  }
}
