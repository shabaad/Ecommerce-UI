import 'package:ecommerce_app/views/order_details_page.dart';
import 'package:ecommerce_app/views/order_page.dart';
import 'package:ecommerce_app/views/widgets/order_details/status_icon.dart';
import 'package:ecommerce_app/views/widgets/shop_page/divider.dart';
import 'package:ecommerce_app/views/widgets/shop_page/shop_details.dart';
import 'package:ecommerce_app/views/widgets/shop_page/shop_images.dart';
import 'package:ecommerce_app/views/widgets/shop_page/top_section.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildProductDetailsPage(context));
  }

  _buildProductDetailsPage(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  ShopImages(),
                  SizedBox(
                    height: screenSize.height * .07,
                  ),
                ],
              ),
              TopSection(),
            ],
          ),
          ShopDetails(),
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/secondScreen'),
              icon: Icon(
                Icons.arrow_forward,
              )),
        ],
      ),
    );
  }
}
