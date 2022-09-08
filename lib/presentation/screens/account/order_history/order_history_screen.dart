import 'package:flutter/material.dart';

import '../../../../infrastructure/core/constants/colors.dart';
import '../../../../infrastructure/dal/static/models/order_history.dart';
import 'widgets/btn_reorder.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = OrderHistory.items;
    return ListView.builder(
      // padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].orderNumber,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        items[index].dealName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        items[index].itemPrice,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: KFC_RED,
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(9, 2, 7, 2),
                            decoration: BoxDecoration(
                              color: items[index].orderStatus.length == 7
                                  ? Colors.orange
                                  : Colors.green.shade700,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(7),
                                bottomLeft: Radius.circular(7),
                              ),
                            ),
                            child: items[index].orderStatus.length == 7
                                ? Text(
                                    ' ${items[index].orderStatus} ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                : Text(
                                    items[index].orderStatus,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(9, 2, 7, 2),
                            decoration: BoxDecoration(
                              color: KFC_RED,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7),
                                bottomRight: Radius.circular(7),
                              ),
                            ),
                            child: Text(
                              'Track',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(items[index].orderDate),
                      BtnReorder(),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              color: Colors.grey,
            ),
          ],
        );
      },
    );
  }
}
