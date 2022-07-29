import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:ecommerce_app/views/widgets/shop_page/divider.dart';
import 'package:flutter/material.dart';

class NotesContainer extends StatelessWidget {
  const NotesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
        containerChild: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Customer Tailor Notes'),
        SizedBox(
          height: 8,
        ),
        Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          style: kGreyStyle,
        ),
        SizedBox(
          height: 10,
        ),
        DividerX(),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Vendor Notes for Tailor'),
            Row(
              children: [
                Icon(Icons.share),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.read_more)
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          style: kGreyStyle,
        ),
      ],
    ));
  }
}
