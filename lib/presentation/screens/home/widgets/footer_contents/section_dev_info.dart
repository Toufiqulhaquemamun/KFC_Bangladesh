import 'package:flutter/material.dart';

class SectionDevInfo extends StatelessWidget {
  const SectionDevInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Developed By ',
            style: TextStyle(color: Colors.grey),
          ),
          Image.asset(
            'assets/images/ail_logo.png',
            height: 20,
          ),
        ],
      ),
    );
  }
}
