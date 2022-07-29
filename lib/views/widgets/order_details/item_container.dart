import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/provider/icon_change.dart';
import 'package:ecommerce_app/provider/show_hide.dart';
import 'package:ecommerce_app/views/widgets/order_details/order_status.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderPageContainer(
            containerChild: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text),
                    Consumer<TabToggle>(builder: (context, appData, child) {
                      return Visibility(
                          visible: appData.isVisible,
                          child: Text(
                            'Category : Shirt | Rs : 450',
                            style: kGreyStyle,
                          ));
                    })
                  ],
                ),
                Consumer2<IconToggle, TabToggle>(
                    builder: (context, iconToggle, tabToggle, child) {
                  return InkWell(
                      onTap: () {
                        iconToggle.changeIcon();
                        tabToggle.closeTab();
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 15,
                        child: iconToggle.toggle
                            ? Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              )
                            : Icon(Icons.keyboard_arrow_up,
                                color: Colors.white),
                      ));
                }),
              ],
            ),
          ],
        )),
        SizedBox(
          height: 10,
        ),
        Flexible(
            fit: FlexFit.loose,
            child: Consumer<TabToggle>(builder: (context, appData, child) {
              return Visibility(
                  visible: appData.isVisible, child: OrderStatus());
            }))
      ],
    );
  }
}
