import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/core/constants/colors.dart';


class TextFieldEmail extends StatelessWidget {
  final TextEditingController controller;

  const TextFieldEmail({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Container(
      // height: 70,
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: Theme(
        data: new ThemeData(
          primaryColor: Colors.green,
          primaryColorDark: Colors.green,
        ),
        child: TextFormField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please provide your email';
            } else if (!(GetUtils.isEmail(value))) {
              return 'Please provide valid email';
            }
            return null;
          },
          controller: controller,
          autocorrect: true,
          textInputAction: TextInputAction.next,
          onEditingComplete: () => node.nextFocus(),
          keyboardType: TextInputType.emailAddress,
          // obscureText: isPassword,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: KFC_RED, width: 1.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: KFC_RED, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
            ),
            // fillColor: Color(0xfff3f3f4),
            // filled: true,
            hintText: 'Email',
          ),
        ),
      ),
    );
  }
}
