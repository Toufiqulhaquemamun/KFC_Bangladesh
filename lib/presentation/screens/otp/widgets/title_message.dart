import 'package:flutter/material.dart';

class TitleMessage extends StatelessWidget {
  const TitleMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Enter 6 Digits Code',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
