import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/views/widgets/order_page/order_container.dart';
import 'package:flutter/material.dart';

class AppointmentContainer extends StatelessWidget {
  const AppointmentContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderPageContainer(
      containerWidth: double.infinity,
      containerChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Appointment Date'),
              SizedBox(
                height: 5,
              ),
              Text(
                "12-05-200 | 11.25 am to 12.30 pm",
                style: TextStyle(color: kGreyColor),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.lightGreenAccent,
                size: 25,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.calendar_month,
                color: Colors.red,
                size: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
