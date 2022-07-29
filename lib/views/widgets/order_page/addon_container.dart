import 'package:ecommerce_app/core/colors.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  ExpandableText();

  @override
  _ExpandableTextState createState() => new _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  var myText =
      "Lining Quality Washed  |  Lining Quality Washed \nLining Quality Washed  |  Lining Quality Washed \nLining Quality Washed  |  Lining Quality Washed \nLining Quality Washed  |  Lining Quality Washed";
  var showAll = false;
  final length = 96;

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      children: <InlineSpan>[
        TextSpan(
            style: kGreyStyle,
            text: myText.length > length && !showAll
                ? myText.substring(0, length) + "..."
                : myText),
        myText.length > length
            ? WidgetSpan(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showAll = !showAll;
                    });
                  },
                  child: Text(
                    showAll ? 'Hide' : 'Show',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              )
            : TextSpan(),
      ],
    ));
  }
}
