import 'package:flutter/material.dart';
import 'package:quiz_app/components/progress.dart';
import 'package:quiz_app/main/constants_part/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: gDefaultPadding),
        child: Column(
          children: [
            Progress(),
          ],
        ),
      )
      ],

    );
  }
}

