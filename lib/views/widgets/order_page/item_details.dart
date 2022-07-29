import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';

class ItemDetailsContainer extends StatelessWidget {
  const ItemDetailsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
        containerHeight: 135,
        containerWidth: double.infinity,
        containerChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("Dennis Lingo Mens's Slim Fit Shirt"),
              ],
            ),
            Row(
              children: [
                Text('Category : '),
                Text(
                  'Men',
                  style: TextStyle(color: kGreyColor),
                )
              ],
            ),
            Row(
              children: [
                Text('Sub-Category : '),
                Text(
                  'Shirt',
                  style: TextStyle(color: kGreyColor),
                )
              ],
            ),
            Row(
              children: [
                Text('Product Code : '),
                Text(
                  '#18358',
                  style: TextStyle(color: kGreyColor),
                )
              ],
            ),
            Row(
              children: [
                Text('Service : '),
                Text(
                  'Stitching',
                  style: TextStyle(color: kGreyColor),
                )
              ],
            )
          ],
        ));
  }
}
