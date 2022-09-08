import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


import '../../../../infrastructure/dal/daos/view_models/signin_viewmodel.dart';
import 'btn_create_account.dart';
import 'radio_group_gender.dart';
import 'text_fields/exports.dart';

class FormSignIn extends GetView<SignInViewModel> {
  const FormSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
        color: Colors.white,
        // height: 400,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldName(controller: controller.nameTextEdit),
            RadioGroupGender(),
            TextFieldMobile(controller: controller.mobileTextEdit),
            TextFieldEmail(controller: controller.emailTextEdit),
            TextFieldDob(controller: controller.dobTextEdit),
            BtnCreateAccount(),
          ],
        ),
      ),
    );
  }
}
