import 'package:flutter/material.dart';
import 'package:quiz_app/components/body.dart';
import 'package:quiz_app/main/constants_part/constants.dart';

class ScoreScreen extends StatefulWidget {
  final int Score;
  ScoreScreen(this.Score, {Key key}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gSecondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Congratulations",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text("Your score is :",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 45,
          ),
          Text(
            "${widget.Score}",
            style: TextStyle(
                fontSize: 78,
                fontWeight: FontWeight.bold,
                color: Colors.orange.shade600),
          ),
          SizedBox(height: 55),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Body()));
            },
            color: Colors.orange.shade700,
            textColor: Colors.white,
            child: Text("Repeat the Quiz"),
          )
        ],
      ),
    );
  }
}
