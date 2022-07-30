import 'package:dotted_line/dotted_line.dart';
import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/provider/icon_change.dart';
import 'package:ecommerce_app/views/widgets/order_details/order_status.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Positioned(
      left: 1,
      right: 1,
      top: 250,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [
                Colors.yellow,
                Colors.deepOrange,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          width: screenSize.width,
          height: screenSize.height * 0.12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      child: Row(
                        children: [
                          Icon(
                            Icons.store,
                            color: kWhiteColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Shop Name',
                            style: TextStyle(
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.navigation,
                          color: kWhiteColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Johnson Road, T.Nagar',
                          style: kWhiteStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    DottedLine(
                      direction: Axis.vertical,
                      lineLength: screenSize.height * 0.10,
                      lineThickness: 1,
                      dashLength: 3.0,
                      dashColor: kWhiteColor,
                      dashRadius: 0,
                      dashGapLength: 2.0,
                      dashGapColor: Colors.transparent,
                    ),
                    Consumer<IconToggle>(builder: (context, iconToggle, child) {
                      return IconButton(
                          icon: iconToggle.toggle
                              ? Icon(
                                  Icons.favorite,
                                  color: kWhiteColor,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  color: kWhiteColor,
                                ),
                          onPressed: () => iconToggle.changeIcon());
                    }),
                    DottedLine(
                      direction: Axis.vertical,
                      lineLength: screenSize.height * 0.10,
                      lineThickness: 1,
                      dashLength: 3.0,
                      dashColor: kWhiteColor,
                      dashRadius: 0,
                      dashGapLength: 2.0,
                      dashGapColor: Colors.transparent,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: kWhiteColor,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
