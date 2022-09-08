import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingsViewModel extends GetxController {
  final TextEditingController _textName = TextEditingController();
  final TextEditingController _textEmail = TextEditingController();
  final TextEditingController _textPhone = TextEditingController();

  @override
  void onInit() {
    _initRequired();
    super.onInit();
  }

  TextEditingController get textName => _textName;

  TextEditingController get textEmail => _textEmail;

  TextEditingController get textPhone => _textPhone;

  _initRequired() {
    _textName.text = 'John Doe';
    _textEmail.text = 'john.doe@gmail.com';
    _textPhone.text = '017XXXXXXXX';
  }

  @override
  void onClose() {
    _textName.dispose();
    _textEmail.dispose();
    _textPhone.dispose();
    super.onClose();
  }
}
