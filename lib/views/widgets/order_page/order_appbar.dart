import 'package:flutter/material.dart';

class OrderPageAppBar extends StatelessWidget {
  const OrderPageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Text(
          'Order Details - ORD123123',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 12.0,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.lightGreenAccent,
                  size: 30,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
