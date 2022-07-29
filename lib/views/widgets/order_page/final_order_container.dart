import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';

class FinalOrderContainer extends StatelessWidget {
  const FinalOrderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
      containerHeight: 225,
      containerChild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Order'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Item 1'), Text('650.00')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add on',
              ),
              Text('00.00')
            ],
          ),
          Text(
            'Price: 650  |  Tax: 18%   |  Tax Amt: 55',
            style: kGreyStyle,
          ),
          Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Taxable', style: kGreyStyle),
              Text('705.00', style: kGreyStyle)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tax Amt', style: kGreyStyle),
              Text('65.00', style: kGreyStyle)
            ],
          ),
          Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Total Amount'), Text('805.00')],
          ),
        ],
      ),
    );
  }
}
