import 'package:ecommerce_app/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatusIcon extends StatelessWidget {
  const StatusIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(80),
        boxShadow: [
          BoxShadow(blurRadius: 5, offset: Offset(0.0, 3)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 10,
            backgroundColor: kOrangeColor,
          ),
        ],
      ),
    );
  }
}
