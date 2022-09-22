import 'package:flutter/material.dart';
import 'package:quiz_app/components/body.dart';
import 'package:quiz_app/components/option.dart';
import 'package:quiz_app/main/constants_part/constants.dart';
import 'package:quiz_app/questions/questions.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key key, this.question}) : super(key: key);

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: gDefaultPadding),
      padding: EdgeInsets.all(gDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 11,
          ),
          Option(),
          Option(),
          Option(),
          Option(),
        ],
      ),
    );
  }
}
