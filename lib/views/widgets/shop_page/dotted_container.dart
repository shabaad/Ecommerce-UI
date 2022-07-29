import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';

class DottedContainer extends StatelessWidget {
  final String title;
  final double kHeight;
  final double kWidth;
  final Color kColor;
  final double kFontSize;
  const DottedContainer({
    Key? key,
    required this.title,
    required this.kHeight,
    required this.kWidth,
    required this.kColor,
    required this.kFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.orange, //color of dotted/dash line
      strokeWidth: 1, //thickness of dash/dots
      dashPattern: [3, 2.5],
      //dash patterns, 10 is dash width, 6 is space width
      child: Container(
        height: kHeight, //height of inner container
        width: kWidth, //width to 100% match to parent container.
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: kFontSize, color: kColor),
          ),
        ),
      ),
    );
  }
}
