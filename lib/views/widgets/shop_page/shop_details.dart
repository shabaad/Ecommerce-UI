import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/views/widgets/shop_page/divider.dart';
import 'package:ecommerce_app/views/widgets/shop_page/dotted_container.dart';

import 'package:flutter/material.dart';

class ShopDetails extends StatelessWidget {
  const ShopDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Services'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DottedContainer(
                title: 'Stitching',
                kHeight: 20,
                kWidth: 80,
                kColor: kGreyColor,
                kFontSize: 10,
              ),
              DottedContainer(
                title: 'Hand Made',
                kHeight: 20,
                kWidth: 80,
                kColor: kGreyColor,
                kFontSize: 10,
              ),
              DottedContainer(
                title: 'Machine Made',
                kHeight: 20,
                kWidth: 80,
                kColor: kGreyColor,
                kFontSize: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: kOrangeColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('3.2')
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          DividerX(),
          SizedBox(
            height: 15,
          ),
          Text('Category'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DottedContainer(
                title: 'Men',
                kHeight: 20,
                kWidth: 80,
                kColor: kGreyColor,
                kFontSize: 10,
              ),
              DottedContainer(
                title: 'Women',
                kHeight: 20,
                kWidth: 80,
                kColor: kGreyColor,
                kFontSize: 10,
              ),
              DottedContainer(
                title: 'Kids',
                kHeight: 20,
                kWidth: 80,
                kColor: kGreyColor,
                kFontSize: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          DividerX(),
          SizedBox(
            height: 15,
          ),
          Text('Benefits'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Material Pickup & Delivery Available',
                    style: kGreyStyle,
                  ),
                ],
              ),
              Icon(
                Icons.reviews,
                color: kOrangeColor,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          DividerX(),
          SizedBox(
            height: 15,
          ),
          Text('Description'),
          SizedBox(
            height: 10,
          ),
          Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.",
              style: TextStyle(color: kGreyColor)),
          SizedBox(
            height: 15,
          ),
          DividerX(),
          SizedBox(
            height: 15,
          ),
          Text('Rating & Comments'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      for (var i = 0; i < 5; i++)
                        Icon(
                          Icons.star,
                          size: 20,
                          color: kOrangeColor,
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '14',
                        style: kGreyStyle,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      for (var i = 0; i < 4; i++)
                        Icon(
                          Icons.star,
                          size: 20,
                          color: kOrangeColor,
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('08', style: kGreyStyle)
                    ],
                  ),
                  Row(
                    children: [
                      for (var i = 0; i < 3; i++)
                        Icon(
                          Icons.star,
                          size: 20,
                          color: kOrangeColor,
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('06', style: kGreyStyle)
                    ],
                  ),
                  Row(
                    children: [
                      for (var i = 0; i < 2; i++)
                        Icon(
                          Icons.star,
                          size: 20,
                          color: kOrangeColor,
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('02', style: kGreyStyle)
                    ],
                  ),
                  Row(
                    children: [
                      for (var i = 0; i < 1; i++)
                        Icon(
                          Icons.star,
                          size: 20,
                          color: kOrangeColor,
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('01', style: kGreyStyle)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: kOrangeColor,
                            ),
                            Text(
                              'Write a Review',
                              style: TextStyle(color: kOrangeColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '4.3',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '54 Rating',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Text('Reviews(12)')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                    ),
                    child: Center(child: Text('JW')),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('John William'),
                      Row(
                        children: [
                          for (var i = 0; i < 3; i++)
                            Icon(
                              Icons.star,
                              size: 15,
                              color: kOrangeColor,
                            ),
                          for (var i = 0; i < 2; i++)
                            Icon(
                              Icons.star,
                              size: 15,
                              color: kGreyColor,
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Text('June 5,2021')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
        ],
      ),
    );
  }
}
