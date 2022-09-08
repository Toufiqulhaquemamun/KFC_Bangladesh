import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/dal/daos/view_models/splash_viewmodel.dart';
import 'dot_circle.dart';

class RowOfDotCircle extends GetView<SplashViewModel> {
  final int rowCount;

  const RowOfDotCircle({Key? key, required this.rowCount}) : super(key: key);

  List<Widget> _generateRow() {
    List<Widget> data = [];
    for (var i = 0; i < rowCount; i++) {
      data.add(DotCircle(color: controller.getDotColor(i)));
      data.add(SizedBox(width: 10));
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _generateRow(),
      ),
    );
  }
}
