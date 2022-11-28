import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/Quiz/colors.dart';
import 'package:vantan/Quiz/quiz_app.dart';
import 'package:vantan/Quiz/text_style.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer!.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  int seconds = 60;
  Timer? timer;
  var currentQuestionIndex = 0;

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [blue, darkBlue],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: lightgrey, width: 2),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context); //trả về gd gameover
                        },
                        icon: const Icon(
                          CupertinoIcons.xmark,
                          color: Colors.white,
                          size: 25,
                        )),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      normalText(
                          color: Colors.white, size: 22, text: "$seconds"),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          value: seconds / 60,
                          valueColor:
                              const AlwaysStoppedAnimation(Colors.white),
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: lightgrey, width: 2),
                    ),
                    child: TextButton.icon(
                        onPressed: null,
                        icon: const Icon(CupertinoIcons.heart_fill,
                            color: Colors.white, size: 18),
                        label: normalText(
                            color: Colors.white, size: 14, text: "2000")),
                  ),
                ],
              ),
              SizedBox(
                  // height: 20,
                  ),
              Image.asset(
                "icons/logo_2.png",
                width: 100,
              ),
              const SizedBox(height: 20),
              Align(
                  alignment: Alignment.centerLeft,
                  child: normalText(
                      color: lightgrey,
                      size: 18,
                      text: "Câu hỏi ${currentQuestionIndex + 1}từ 1 đến 50")),
              const SizedBox(height: 20),
              normalText(
                  color: Colors.white, size: 18, text: "what is your name?"),
              const SizedBox(height: 20),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      alignment: Alignment.center,
                      width: size.width - 100,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:
                          headingText(color: blue, size: 18, text: "Continue"),
                    );
                  }),
              Container(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => QuizApp()));
                      },
                      icon: Icon(Icons.attach_money),
                      color: Colors.red,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => QuizApp()));
                      },
                      icon: Icon(Icons.next_plan),
                      color: Colors.red,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => QuizApp()));
                      },
                      icon: Icon(Icons.call_end),
                      color: Colors.red,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => QuizApp()));
                      },
                      icon: Icon(Icons.analytics),
                      color: Colors.red,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => QuizApp()));
                      },
                      icon: Icon(Icons.two_k_plus),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
