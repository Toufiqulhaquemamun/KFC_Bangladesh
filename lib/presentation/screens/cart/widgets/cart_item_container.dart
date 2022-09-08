import 'package:flutter/material.dart';

import '../../../../infrastructure/dal/static/models/cart_item.dart';
import 'btn_decrement.dart';
import 'btn_increment.dart';

class CartItemContainer extends StatelessWidget {
  const CartItemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    final items = CartItem.items;
    return SizedBox(
      height: h * 0.45,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          // color: Colors.orange,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: w * 0.36,
                height: w * 0.27,
                decoration: BoxDecoration(
                  // color: Colors.green,
                  image: DecorationImage(
                    image: AssetImage(items[index].image),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                // padding: EdgeInsets.zero,
                width: w * 0.3,
                // color: Colors.orange,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text(
                        items[index].itemName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text(
                        items[index].itemDetails,
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 5),
                        BtnDecrement(),
                        Text(items[index].quantity),
                        BtnIncrement(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Edit',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Text(
                          'Delete',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.white,
                child: Text(
                  items[index].itemPrice,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
