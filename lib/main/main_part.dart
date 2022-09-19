import 'package:flutter/material.dart';
import 'package:quiz_app/main/constants_part/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MainPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        WebsafeSvg.asset("assets/icons.bg.svg"),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: gDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(
                flex: 2,
              ),
              Text(
                "Let's Play Quiz",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text("Enter your informations below"),
              Spacer(),
              TextField(
                decoration: InputDecoration(  
                  hintText: "Enter the full name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(gDefaultPadding / 2),
                  decoration: BoxDecoration(
                    gradient: gPrimaryGradient,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Lets Start Quiz",
                    style: Theme.of(context).textTheme.button.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ))
      ]),
    );
  }
}
