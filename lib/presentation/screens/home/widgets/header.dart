import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header_contents/btn_delivery.dart';
import 'header_contents/btn_takeaway.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 130,
            child: Image.asset('assets/images/colonel_logo.png'),
          ),
          SizedBox(height: 10),
          Text(
            'Select Order Mode',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          BtnDelivery(),
          BtnTakeaway(),
        ],
      ),
    );
  }
}
