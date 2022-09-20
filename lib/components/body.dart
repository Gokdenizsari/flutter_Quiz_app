import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/components/question_card.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/main/constants_part/constants.dart';
import 'package:quiz_app/model/questions.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'progress.dart';



class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());

    return Stack(
      children: [
        /* WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.f),*/
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: gDefaultPadding),
                child: Progress(),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: gDefaultPadding),
                child: Text.rich(
                  TextSpan(
                      text: "Question 1",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: gSecondaryColor)),
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: _questionController.question.length,
                  itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.question[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
