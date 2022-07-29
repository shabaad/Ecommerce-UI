import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';

class UserDetailsContainer extends StatelessWidget {
  const UserDetailsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
      containerChild: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/photos/portrait-of-attractive-cheerful-content-guy-folded-arms-good-mood-picture-id1334859445"),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Vijay',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Contact No : XXXXXXXXXX",
                    style: TextStyle(color: Colors.black45, fontSize: 16.0),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
