import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/Quiz/colors.dart';
import 'package:vantan/Quiz/game_over.dart';
import 'package:vantan/Quiz/text_style.dart';
import 'package:vantan/giaodienchoi.dart';
import 'package:vantan/trang_chu.dart';

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

  int seconds = 1000;
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
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(
                                  'Nếu quay về thì bạn sẽ thua, bạn chắc chưa ?'),
                              actions: [
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('Không')),
                                TextButton(
                                    onPressed: () => Navigator.of(context)
                                        .pushAndRemoveUntil(
                                            MaterialPageRoute(
                                              builder: (context) => TrangChu(),
                                            ),
                                            (Route<dynamic> route) => false),
                                    child: Text('Có')),
                              ],
                            );
                          },
                        );
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(
                        //       builder: (context) => Giaodienchoi(),
                        //     ),
                        //     (Route<dynamic> route) => false);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    normalText(color: Colors.white, size: 25, text: "$seconds"),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        value: seconds / 60,
                        valueColor: const AlwaysStoppedAnimation(Colors.white),
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
                      icon: const Icon(CupertinoIcons.money_dollar,
                          color: Colors.white, size: 20),
                      label: normalText(
                          color: Colors.white, size: 10, text: "2000")),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Điểm: 1000",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 30),
              alignment: Alignment.center,
              width: 400,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.lightBlue,
                      offset: Offset(1.0, 1.0),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                    )
                  ]),
              child: Text(
                "Câu Hỏi",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Align(
            //     alignment: Alignment.centerLeft,
            //     child: normalText(
            //         color: lightgrey,
            //         size: 18,
            //         text: "Câu hỏi ${currentQuestionIndex + 1}từ 1 đến 50")),
            // const SizedBox(height: 20),
            // normalText(
            //     color: Colors.white, size: 18, text: "what is your name?"),
            // const SizedBox(height: 20),

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
                    child: headingText(color: blue, size: 18, text: "Continue"),
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
    );
  }
}
