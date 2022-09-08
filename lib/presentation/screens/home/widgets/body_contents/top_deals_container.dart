import 'package:flutter/material.dart';

import '../../../../../infrastructure/dal/static/models/home_deals.dart';

class TopDealsContainer extends StatelessWidget {
  const TopDealsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final items = HomeDeals.items;
    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.fromLTRB(30, 7, 30, 7),
            height: w * 0.25,
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage(items[index]),
                // fit: BoxFit.cover,
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          );
          // return Padding(
          //   padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Image.asset(
          //       items[index],
          //       fit: BoxFit.cover,
          //       // fit: BoxFit.fill,
          //       height: w * 0.25,
          //       // width: 100.0,
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
