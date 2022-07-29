import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/views/order_details_page.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
        containerWidth: double.infinity,
        containerChild: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Payment mode'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Cash on Delivery',
                  style: kGreyStyle,
                )
              ],
            ),
            IconButton(
                onPressed: () => Navigator.pushNamed(context, '/thirdScreen'),
                icon: Icon(
                  Icons.arrow_forward,
                ))
          ],
        ));
  }
}
