import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../infrastructure/core/constants/colors.dart';

class TextFieldOtp extends StatelessWidget {
  final TextEditingController controller;

  const TextFieldOtp({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white54,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        keyboardType: TextInputType.number,
        onChanged: (value) {
          if (value.length == 1) {
            node.nextFocus();
          }
        },
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: KFC_RED,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please provide OTP';
          } else if (value.length < 1) {
            return 'OTP must have 6 digits';
          }
          return null;
        },
        controller: controller,
        autocorrect: true,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => node.nextFocus(),
      ),
    );
  }
}
