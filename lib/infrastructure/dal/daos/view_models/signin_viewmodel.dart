import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../presentation/screens/otp/otp_screen.dart';

class SignInViewModel extends GetxController {
  final _nameTextEdit = new TextEditingController();
  final _genderTextEdit = new TextEditingController();
  final _mobileTextEdit = new TextEditingController();
  final _emailTextEdit = new TextEditingController();
  final _dobTextEdit = new TextEditingController().obs;
  final _formKey = GlobalKey<FormState>();

  final _radioGender = 1.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  TextEditingController get nameTextEdit => _nameTextEdit;

  TextEditingController get genderTextEdit => _genderTextEdit;

  TextEditingController get mobileTextEdit => _mobileTextEdit;

  TextEditingController get emailTextEdit => _emailTextEdit;

  TextEditingController get dobTextEdit => _dobTextEdit.value;

  GlobalKey<FormState> get formKey => _formKey;

  int get radioGender => _radioGender.value;

  Future<void> pickDate(BuildContext context) async {
    // final DateTime picked = await showDatePicker(
    //   context: context,
    //   initialDate: DateTime.now(),
    //   firstDate: DateTime(1900),
    //   lastDate: DateTime(DateTime.now().year + 1),
    // );
    // if (picked != null) {
    //   // if (picked. == DateTime.now()) {}
    //   _dobTextEdit.value.text = picked.toLocal().toString().split(' ')[0];
    // }
  }

  updateRadioValue(int value) {
    _radioGender.value = value;
  }

  validateForm(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Processing...'),
        ),
      );
      await Future.delayed(const Duration(seconds: 1), () async {
        // _disposeTimer();
        Scaffold.of(context).hideCurrentSnackBar();
        Get.toNamed(OtpScreen.routeName);
      });
      // await Future.delayed(const Duration(seconds: 1), () async {
      //   Scaffold.of(context).hideCurrentSnackBar();
      //   Get.toNamed(
      //     OtpScreen.routeName,
      //     arguments: {
      //       'name': name,
      //       'phone': phone,
      //       'email': email,
      //     },
      //   ).then((value) {
      //     if (!value) {
      //       SharedSnackBar.showSnackBar(
      //         "Timeout, OTP expired!",
      //         phColorRed,
      //         seconds: 2,
      //       );
      //     }
      //   });
      // });
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
    _nameTextEdit.dispose();
    _genderTextEdit.dispose();
    _mobileTextEdit.dispose();
    _emailTextEdit.dispose();
    _dobTextEdit.value.dispose();
    super.onClose();
  }
}
