import 'package:ecommerce_app/provider/icon_change.dart';
import 'package:ecommerce_app/provider/show_all.dart';

import 'package:ecommerce_app/provider/show_hide.dart';
import 'package:ecommerce_app/views/order_details_page.dart';
import 'package:ecommerce_app/views/order_page.dart';
import 'package:ecommerce_app/views/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => TabToggle(),
      ),
      ChangeNotifierProvider(
        create: (context) => IconToggle(),
      ),
      ChangeNotifierProvider(
        create: (context) => ShowAll(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce task',
      routes: {
        '/secondScreen': (context) => OrderPage(),
        '/thirdScreen': (context) => const OrderDetailsPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShopPage(),
    );
  }
}
