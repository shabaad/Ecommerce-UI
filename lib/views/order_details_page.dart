import 'package:ecommerce_app/provider/show_hide.dart';
import 'package:ecommerce_app/views/widgets/order_details/dummy_product_container.dart';
import 'package:ecommerce_app/views/widgets/order_details/item_container.dart';
import 'package:ecommerce_app/views/widgets/order_details/order_details_appbar.dart';
import 'package:ecommerce_app/views/widgets/order_details/order_status.dart';
import 'package:ecommerce_app/views/widgets/order_page/product_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/user_container.dart';
import 'package:ecommerce_app/views/widgets/shop_page/divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            OrderDetailsAppbar(),
            SizedBox(
              height: 20,
            ),
            DividerX(),
            SizedBox(
              height: 10,
            ),
            UserDetailsContainer(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Order Status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Consumer<TabToggle>(builder: (context, appData, child) {
              return ItemContainer(
                text: "Item 1",
              );
            }),
            SizedBox(
              height: 10,
            ),
            DummyContainer(
              text: "Item 2",
            ),
            SizedBox(
              height: 10,
            ),
            DummyContainer(
              text: "Item 3",
            ),
          ],
        ),
      )),
    ));
  }
}
