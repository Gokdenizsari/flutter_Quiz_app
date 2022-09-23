import 'package:flutter/material.dart';
import 'package:quiz_app/components/progress.dart';
import 'package:quiz_app/components/score.dart';
import 'package:quiz_app/main/constants_part/constants.dart';
import 'package:quiz_app/questions/questions.dart';

class Body extends StatefulWidget {
  Body({
    Key key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController _controller = PageController(initialPage: 0);

  bool isPressed = false;

  Color isTrue = gGreenColor;

  Color isWrong = gRedColor;

  Color mmsColor = gSecondaryColor;

  int Score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(1),
          child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemCount: questions.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 0),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: gDefaultPadding),
                      child: Progress()),
                  SizedBox(
                    height: 20,
                    width: double.infinity,
                  ),
                  Text(
                    "Question ${index + 1}/${questions.length}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w300),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 8,
                    thickness: 1,
                  ),
                  SizedBox(height: 12),
                  Text(
                    questions[index].question,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 30),
                  for (int i = 0; i < questions[index].answers.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: gDefaultPadding),
                      padding:
                          EdgeInsets.symmetric(horizontal: gDefaultPadding),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        /*padding:
                            EdgeInsets.symmetric(horizontal: gDefaultPadding * 2),*/

                        color: isPressed
                            ? questions[index].answers.entries.toList()[i].value
                                ? isTrue
                                : isWrong
                            : gSecondaryColor,
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (questions[index]
                                    .answers
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  Score += 10;
                                }
                              },
                        child: Text(
                          questions[index].answers.keys.toList()[i],
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 35,
                  ),
                  OutlinedButton(
                      onPressed: isPressed
                          ? index + 1 == questions.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ScoreScreen(Score)));
                                }
                              : () {
                                  _controller.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.linear);
                                  setState(() {
                                    isPressed = false;
                                  });
                                }
                          : null,
                      child: Text(
                        index + 1 == questions.length
                            ? "See Result"
                            : "Next Question",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
/*Scaffold(
      body: Padding(
        padding: EdgeInsets.all(gDefaultPadding),
        child: PageView.builder(
            itemCount: questions.length,
            itemBuilder: ((context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text("Question ${index +1}/${questions.length}")],
              );
            })),
      ),
    );*/