import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShopImages extends StatefulWidget {
  const ShopImages({Key? key}) : super(key: key);

  @override
  State<ShopImages> createState() => _ShopImagesState();
}

class _ShopImagesState extends State<ShopImages> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController imagesController = TabController(length: 3, vsync: this);

    return Container(
      width: double.infinity,
      height: 300.0,
      child: DefaultTabController(
        length: 3,
        child: Stack(
          children: [
            TabBarView(
              controller: imagesController,
              children: <Widget>[
                Image.network(
                  "https://cdn.homedit.com/wp-content/uploads/2017/08/Dark-masculine-walk-in-closet-design.jpg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://cdn.homedit.com/wp-content/uploads/2017/08/Dark-masculine-walk-in-closet-design.jpg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://cdn.homedit.com/wp-content/uploads/2017/08/Dark-masculine-walk-in-closet-design.jpg",
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Container(
              alignment: FractionalOffset(0.5, 0.8),
              child: TabPageSelector(
                borderStyle: BorderStyle.none,
                indicatorSize: 10,
                controller: imagesController,
                selectedColor: Colors.orange,
                color: Colors.white,
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 18,
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
