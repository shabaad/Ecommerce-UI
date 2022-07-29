import 'package:flutter/material.dart';

class OrderPageContainer extends StatelessWidget {
  const OrderPageContainer({
    Key? key,
    this.containerHeight,
    this.containerWidth,
    required this.containerChild,
  }) : super(key: key);

  final double? containerHeight;
  final double? containerWidth;
  final Widget containerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.blue)),
      child: containerChild,
    );
  }
}
