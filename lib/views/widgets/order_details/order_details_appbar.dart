import 'package:flutter/material.dart';

class OrderDetailsAppbar extends StatelessWidget {
  const OrderDetailsAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: const CircleAvatar(
            backgroundColor: Colors.orange,
            radius: 18,
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 80,
        ),
        Text(
          'Order Details - ORD123123',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
