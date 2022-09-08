import 'package:flutter/material.dart';

class RowHeader extends StatelessWidget {
  const RowHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: w * 0.27,
          height: 1,
          color: Colors.grey.shade400,
        ),
        SizedBox(width: 10),
        Text(
          'WHATS NEW',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: w * 0.27,
          height: 1,
          color: Colors.grey.shade400,
        ),
      ],
    );
  }
}
