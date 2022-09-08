import 'package:flutter/material.dart';

import 'body_contents/row_header.dart';
import 'body_contents/top_deals_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RowHeader(),
          SizedBox(height: 20),
          TopDealsContainer(),
        ],
      ),
    );
  }
}
