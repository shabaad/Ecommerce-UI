import 'package:ecommerce_app/views/widgets/order_details/dummy_product_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/addon_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/appointment_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/final_order_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/item_details.dart';
import 'package:ecommerce_app/views/widgets/order_page/pickup_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/notes_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_appbar.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/payment_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/product_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/user_container.dart';
import 'package:ecommerce_app/views/widgets/order_page/address_container.dart';
import 'package:ecommerce_app/views/widgets/shop_page/divider.dart';
import 'package:ecommerce_app/views/widgets/shop_page/dotted_container.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                OrderPageAppBar(),
                SizedBox(
                  height: 20,
                ),
                DividerX(),
                SizedBox(
                  height: 15,
                ),
                ItemDetailsContainer(),
                SizedBox(
                  height: 10,
                ),
                UserDetailsContainer(),
                SizedBox(height: 10),
                AddressContainer(),
                SizedBox(
                  height: 10,
                ),
                PickUpContainer(),
                SizedBox(
                  height: 10,
                ),
                AppointmentContainer(),
                SizedBox(
                  height: 10,
                ),
                ProductContainer(
                  text: 'Product 1',
                ),
                SizedBox(
                  height: 10,
                ),
                OrderPageContainer(
                    containerWidth: double.infinity,
                    containerChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Addon Service'),
                        SizedBox(
                          height: 8,
                        ),
                        ExpandableText(),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                NotesContainer(),
                SizedBox(
                  height: 20,
                ),
                DottedContainer(
                  title: 'Vendor Notes for tailor',
                  kHeight: 30,
                  kWidth: double.infinity,
                  kColor: Colors.orange,
                  kFontSize: 15,
                ),
                SizedBox(
                  height: 20,
                ),
                DummyContainer(
                  text: 'Product 2',
                ),
                SizedBox(
                  height: 10,
                ),
                FinalOrderContainer(),
                SizedBox(
                  height: 10,
                ),
                PaymentContainer(),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
