import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';

class PickUpContainer extends StatelessWidget {
  const PickUpContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
      containerChild: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Pick Up Date'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '12 - 04 - 2022',
                  style: kGreyStyle,
                )
              ],
            ),
            VerticalDivider(
              thickness: 1,
              color: Colors.blue,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pick Up Time'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '10:30 AM',
                  style: kGreyStyle,
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.reviews,
                  size: 15,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
