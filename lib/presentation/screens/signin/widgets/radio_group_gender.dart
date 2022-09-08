import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/core/constants/colors.dart';
import '../../../../infrastructure/dal/daos/view_models/signin_viewmodel.dart';

class RadioGroupGender extends GetView<SignInViewModel> {
  const RadioGroupGender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return Obx(
      () => Row(
        children: [
          Container(
            width: w * 0.4,
            child: RadioListTile(
              value: 1,
              groupValue: controller.radioGender,
              title: Text("Male"),
              // subtitle: Text("Subtitle"),
              onChanged: (value) {
                debugPrint("radio: $value");
                controller.updateRadioValue(value as int);
              },
              activeColor: KFC_RED,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     debugPrint("Say Hello");
              //   },
              // ),
              selected: false,
            ),
          ),
          Container(
            width: w * 0.4,
            child: RadioListTile(
              value: 2,
              groupValue: controller.radioGender,
              title: Text("Female"),
              // subtitle: Text("Subtitle"),
              onChanged: (value) {
                debugPrint("radio: $value");
                controller.updateRadioValue(value as int);
              },
              activeColor: KFC_RED,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     debugPrint("Say Hello");
              //   },
              // ),
              selected: false,
            ),
          ),
        ],
      ),
    );
  }
}
