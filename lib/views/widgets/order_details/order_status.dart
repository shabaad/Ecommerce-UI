import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/views/widgets/order_details/status_icon.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OrderCircle(
                borderColor: Colors.orange,
              ),
              OrderLine(
                lineColor: Colors.orange,
              ),
              OrderCircle(
                borderColor: kGreyColor,
              ),
              OrderLine(lineColor: kGreyColor),
              OrderCircle(
                borderColor: kGreyColor,
              ),
              OrderLine(lineColor: kGreyColor),
              OrderCircle(
                borderColor: kGreyColor,
              ),
              OrderLine(lineColor: kGreyColor),
              OrderCircle(
                borderColor: kGreyColor,
              ),
            ],
          ),
        ),
        Container(
          width: 285,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Product Picked Up',
                        style: kGreyStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Date : 12/10/2021 - 10:05am', style: kGreyStyle),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  StatusIcon()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Stitching Started', style: kGreyStyle),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Date : 12/10/2021 - 10:05am', style: kGreyStyle),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  StatusIcon()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Product Completed', style: kGreyStyle),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Date : 12/10/2021 - 10:05am', style: kGreyStyle),
                    ],
                  ),
                  StatusIcon()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Order Taken by Delivery Boy',
                          style: kGreyStyle),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Date : 12/10/2021 - 10:05am', style: kGreyStyle),
                    ],
                  ),
                  StatusIcon()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('Your Product Delivery', style: kGreyStyle),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Date : 12/10/2021 - 10:05am', style: kGreyStyle),
                    ],
                  ),
                  StatusIcon()
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OrderLine extends StatelessWidget {
  const OrderLine({
    Key? key,
    required this.lineColor,
  }) : super(key: key);

  final Color lineColor;

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: Axis.vertical,
      lineLength: 35,
      lineThickness: 1,
      dashLength: 3.0,
      dashColor: lineColor,
      dashRadius: 0,
      dashGapLength: 2.0,
      dashGapColor: Colors.transparent,
    );
  }
}

class OrderCircle extends StatelessWidget {
  const OrderCircle({
    Key? key,
    required this.borderColor,
  }) : super(key: key);

  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: borderColor,
            width: 4,
          )),
    );
  }
}
