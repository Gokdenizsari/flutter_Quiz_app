import 'package:flutter/material.dart';
import 'package:quiz_app/main/constants_part/constants.dart';

class Option extends StatelessWidget {
  const Option({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: gDefaultPadding),
      padding: EdgeInsets.all(gDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: gGrayColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(children: [
        Text(
          "1.Test",
          style: TextStyle(color: gGrayColor, fontSize: 15),
        ),
        Container(
          width: 25,
          height: 25,
        ),
      ]),
    );
  }
}