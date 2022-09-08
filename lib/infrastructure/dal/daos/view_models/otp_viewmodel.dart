import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../presentation/screens/home/home_screen.dart';

class OtpViewModel extends GetxController {
  final _otpDigit1 = new TextEditingController(text: '1');
  final _otpDigit2 = new TextEditingController(text: '2');
  final _otpDigit3 = new TextEditingController(text: '3');
  final _otpDigit4 = new TextEditingController(text: '4');
  final _otpDigit5 = new TextEditingController(text: '5');
  final _otpDigit6 = new TextEditingController(text: '6');
  final _formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  TextEditingController get otpDigit1 => _otpDigit1;

  TextEditingController get otpDigit2 => _otpDigit2;

  TextEditingController get otpDigit3 => _otpDigit3;

  TextEditingController get otpDigit4 => _otpDigit4;

  TextEditingController get otpDigit5 => _otpDigit5;

  TextEditingController get otpDigit6 => _otpDigit6;

  GlobalKey<FormState> get formKey => _formKey;

  validateForm(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      // Get.find<OtpViewModel>().isOtpVerifying.value = true;
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Processing...'),
        ),
      );
      await Future.delayed(const Duration(seconds: 1), () async {
        Scaffold.of(context).hideCurrentSnackBar();
        Get.offAllNamed(HomeScreen.routeName);
        // if (smsCode == otpCode || otpCode == concatCode) {
        //   Get.find<OtpViewModel>().otpStatus.value = 'otp_verified';
        //   Get.find<OtpViewModel>().fetchCustomerData().then((value) {
        //     if (value != null && value.token.length > 0) {
        //       Get.find<OtpViewModel>().closeTimer();
        //       Get.toNamed(Routes.home);
        //     } else {
        //       SharedSnackBar.showSnackBar(
        //           "Login failed, try again!", phColorRed,
        //           seconds: 1);
        //       Get.find<OtpViewModel>().isOtpVerifying.value = false;
        //       Get.find<OtpViewModel>().closeTimer();
        //       Get.back(result: false);
        //     }
        //   });
        // } else {
        //   SharedSnackBar.showSnackBar(
        //       "OTP did not match, try again!", phColorRed,
        //       seconds: 1);
        //   Get.find<OtpViewModel>().isOtpVerifying.value = false;
        //   Get.find<OtpViewModel>().closeTimer();
        //   Get.back(result: false);
        // }
      });
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Provide valid data!'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  void onClose() {
    otpDigit1.dispose();
    otpDigit2.dispose();
    otpDigit3.dispose();
    otpDigit4.dispose();
    otpDigit5.dispose();
    otpDigit6.dispose();
    super.onClose();
  }
}
