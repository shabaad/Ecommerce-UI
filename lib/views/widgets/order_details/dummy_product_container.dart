import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';

class DummyContainer extends StatelessWidget {
  final String text;
  const DummyContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
      containerChild: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text),
              CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 15,
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
