import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/dal/daos/view_models/otp_viewmodel.dart';
import 'text_field_otp.dart';

class FormOtp extends GetView<OtpViewModel> {
  const FormOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Container(
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFieldOtp(controller: controller.otpDigit1),
            TextFieldOtp(controller: controller.otpDigit2),
            TextFieldOtp(controller: controller.otpDigit3),
            TextFieldOtp(controller: controller.otpDigit4),
            TextFieldOtp(controller: controller.otpDigit5),
            TextFieldOtp(controller: controller.otpDigit6),
          ],
        ),
      ),
    );
  }
}
