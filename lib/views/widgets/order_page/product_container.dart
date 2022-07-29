import 'package:ecommerce_app/provider/icon_change.dart';
import 'package:ecommerce_app/provider/show_hide.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductContainer extends StatelessWidget {
  final String text;
  const ProductContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
        containerChild: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
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
                        : Icon(Icons.keyboard_arrow_up, color: Colors.white),
                  ));
            }),
          ],
        ),
        Consumer<TabToggle>(builder: (context, tabtoggle, snapshot) {
          return Visibility(
            visible: tabtoggle.isVisible,
            child: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 1,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Material Image'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 75,
                        child: Row(
                          children: [
                            Image.network(
                                'https://www.pngitem.com/pimgs/m/134-1345971_landscape-icon-grey-hd-png-download.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Image.network(
                                'https://www.pngitem.com/pimgs/m/134-1345971_landscape-icon-grey-hd-png-download.png'),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
          );
        })
      ],
    ));
  }
}
