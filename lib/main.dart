import 'package:flutter/material.dart';

import 'package:quiz_app_2_0/Button.dart';
import 'package:quiz_app_2_0/Quesiton.dart';
import 'package:quiz_app_2_0/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionList = [
    {
      "QuestionText": "A",
      "Answer": [
        {"text": "v", "score": 10},
        {"text": "g", "score": 0},
        {"text": "f", "score": 0},
        {"text": "v", "score": 0},
        
      ],
    },
    {
      "QuestionText": "B",
      "Answer": [
        {"text": "X", "score": 10},
        {"text": "v", "score": 0},
        {"text": "C", "score": 0},
        {"text": "Y", "score": 0},

      ],
    },
    {
      "QuestionText": "C",
      "Answer": [
        {"text": "X", "score": 10},
        {"text": "H", "score": 0},
        {"text": "K", "score": 0},
        {"text": "<", "score": 0},

      ],
    },
  ];
var tot =0;
  var questionIndex = 0;
  void index(int score) {
    setState(() {
      tot += score;
      questionIndex += 1;
    });
    print(questionIndex);
    print(tot);
  }

void restart(){
  setState(() {
    tot =0;
  questionIndex =0;
  });
  
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: questionIndex < questionList.length ? Center(
          child: Column(
            children: [
              Questionx(questionList[questionIndex]["QuestionText"]),
              ...(questionList[questionIndex]["Answer"] as List).map(
                (answer) {
                  return Button(() =>index(answer["score"]), answer["text"]);
                },
              ),
      
            ],
          ),
        )
    : Result(tot,restart)
      ),
    );
  }
}
