import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
        containerHeight: 120,
        containerWidth: double.infinity,
        containerChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Address'),
            Text(
              'No:2/326, Malayanoor (Vill), \nRamagondahalli (PO), Pennagaram (Tk) \nTamil nadu - 636 810',
              style: TextStyle(height: 1.8, color: kGreyColor),
            )
          ],
        ));
  }
}
