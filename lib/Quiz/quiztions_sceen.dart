import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/Quiz/colors.dart';
import 'package:vantan/Quiz/game_over.dart';
import 'package:vantan/Quiz/text_style.dart';
import 'package:vantan/Service/global.dart';
import 'package:vantan/Service/quiztions.dart';
import 'package:vantan/giaodienchoi.dart';
import 'package:vantan/trang_chu.dart';

import 'app_colors.dart';
import 'audience_help.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var currentQuestionIndex = 0;
  int seconds = 60;
  Timer? timer;
  late Future quiz;

  int points = 0;

  int sodapan = 4;
  int loaidapan = 1;
  String indexanswer = '';
  int indexcorrect = 0;
  int ykien = 1;
  int sodu = 2000;
  int muadapan = 100;
  int swap = 1;

  var isLoaded = false;

  var optionsList = [];

  var optionsColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  @override
  void initState() {
    super.initState();
    quiz = getQuiz();
    startTimer();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  resetColors() {
    optionsColor = [
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
    ];
  }

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          gotoNextQuestion();
        }
      });
    });
  }

  gotoNextQuestion() {
    isLoaded = false;
    currentQuestionIndex++;
    resetColors();
    optionsList = [];
    timer!.cancel();
    seconds = 60;
    startTimer();
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
            child: FutureBuilder(
              future: quiz,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var data = snapshot.data["question"];
                  indexanswer = data[currentQuestionIndex]["correct_answer"];
                  if (isLoaded == false) {
                    optionsList
                        .add(data[currentQuestionIndex]["incorrect_answer_1"]);
                    optionsList
                        .add(data[currentQuestionIndex]["correct_answer"]);
                    optionsList
                        .add(data[currentQuestionIndex]["incorrect_answer_2"]);
                    optionsList
                        .add(data[currentQuestionIndex]["incorrect_answer_3"]);
                    optionsList.shuffle();
                    isLoaded = true;
                  }

                  return SingleChildScrollView(
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
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text('Không')),
                                          TextButton(
                                              onPressed: () => Navigator.of(
                                                      context)
                                                  .pushAndRemoveUntil(
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            TrangChu(),
                                                      ),
                                                      (Route<dynamic> route) =>
                                                          false),
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
                              normalText(
                                  color: Colors.white,
                                  size: 25,
                                  text: "$seconds"),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  value: seconds / 60,
                                  valueColor: const AlwaysStoppedAnimation(
                                      Colors.white),
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
                                    color: Colors.white,
                                    size: 10,
                                    text: sodu.toString())),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Điểm: " + points.toString(),
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 10, bottom: 30),
                      //   alignment: Alignment.center,
                      //   width: 400,
                      //   height: 160,
                      //   decoration: BoxDecoration(
                      //       color: Colors.lightBlue,
                      //       borderRadius: BorderRadius.circular(16),
                      //       boxShadow: [
                      //         new BoxShadow(
                      //           color: Colors.lightBlue,
                      //           offset: Offset(1.0, 1.0),
                      //           blurRadius: 4.0,
                      //           spreadRadius: 1.0,
                      //         )
                      //       ]),
                      //   child:
                      Align(
                          alignment: Alignment.centerLeft,
                          child: normalText(
                              color: lightgrey,
                              size: 18,
                              text:
                                  "Câu hỏi ${currentQuestionIndex + 1} of ${data.length}")),
                      const SizedBox(height: 20),
                      normalText(
                          color: Colors.white,
                          size: 18,
                          text: data[currentQuestionIndex]["question"]),
                      const SizedBox(height: 20),
                      //),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: optionsList.length,
                          itemBuilder: (BuildContext context, int index) {
                            var answer =
                                data[currentQuestionIndex]["correct_answer"];

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (answer.toString() ==
                                      optionsList[index].toString()) {
                                    optionsColor[index] = Colors.green;
                                    points = points + 10;
                                  } else {
                                    optionsColor[index] = Colors.yellow;
                                  }

                                  if (currentQuestionIndex < data.length - 1) {
                                    Future.delayed(const Duration(seconds: 1),
                                        () {
                                      gotoNextQuestion();
                                    });
                                  } else {
                                    timer!.cancel();
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        content: Text('Điểm của bạn ' +
                                            points.toString()),
                                        actions: [
                                          TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text('Không')),
                                          TextButton(
                                              onPressed: () => Navigator.of(
                                                      context)
                                                  .pushAndRemoveUntil(
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            TrangChu(),
                                                      ),
                                                      (Route<dynamic> route) =>
                                                          false),
                                              child: Text('Có')),
                                        ],
                                      ),
                                    );
                                    //here you can do whatever you want with the results
                                  }
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                alignment: Alignment.center,
                                width: size.width - 100,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: optionsColor[index],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: headingText(
                                  color: blue,
                                  size: 18,
                                  text: optionsList[index].toString(),
                                ),
                              ),
                            );
                          }),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  if (loaidapan == 1) {
                                    sodapan = 2;

                                    for (int i = 0;
                                        i < optionsList.length;
                                        i++) {
                                      if (optionsList[i].toString() ==
                                          indexanswer.toString()) {
                                        indexcorrect = i;
                                        break;
                                      }
                                    }
                                    if (indexcorrect == 0 ||
                                        indexcorrect == 1) {
                                      optionsList.removeAt(2);
                                      optionsList.removeAt(2);
                                      optionsList.add('');
                                      optionsList.add('');
                                    } else {
                                      optionsList.removeAt(0);
                                      optionsList.removeAt(0);
                                      optionsList.add('');
                                      optionsList.add('');
                                    }

                                    loaidapan = 0;
                                  } else {
                                    errorSnackBar(
                                        context, 'Bạn đã dùng hết lượt');
                                  }
                                });
                              },
                              child: Text(
                                '50:50',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 50,
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Text('OK')),
                                      ],
                                    );
                                  },
                                );
                              },
                              icon: Icon(Icons.phone_callback),
                              color: Colors.white,
                              iconSize: 30,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (ykien == 1 && sodapan == 4) {
                                    showDialog<dynamic>(
                                      context: context,
                                      builder: (BuildContext context) => Center(
                                        child: HelpAudience(
                                          indexCorrect: sodapan,
                                          isTapFifty: false,
                                        ),
                                      ),
                                    );
                                    ykien = 0;
                                  } else if (ykien == 1 && sodapan == 2) {
                                    showDialog<dynamic>(
                                      context: context,
                                      builder: (BuildContext context) => Center(
                                        child: HelpAudience(
                                          indexCorrect: sodapan,
                                          isTapFifty: true,
                                        ),
                                      ),
                                    );
                                    ykien = 0;
                                  } else {
                                    errorSnackBar(
                                        context, 'Bạn đã dùng hết lượt');
                                  }
                                });
                              },
                              icon: Icon(Icons.people_alt),
                              color: Colors.white,
                              iconSize: 30,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  if (swap == 1) {
                                    gotoNextQuestion();
                                    swap = 0;
                                  } else {
                                    errorSnackBar(
                                        context, 'Bạn đã dùng hết lượt');
                                  }
                                });
                              },
                              child: Image(
                                image: AssetImage('images/swap.png'),
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (sodu >= muadapan) {
                                    for (int i = 0;
                                        i < optionsList.length;
                                        i++) {
                                      if (optionsList[i].toString() ==
                                          indexanswer.toString()) {
                                        indexcorrect = i;
                                        break;
                                      }
                                    }
                                    optionsColor[indexcorrect] =
                                        AppColor.yellow1;
                                    muadapan += 100;
                                    sodu -= muadapan;
                                  } else {
                                    errorSnackBar(
                                        context, 'Số dư bạn không đủ');
                                  }
                                });
                              },
                              icon: Icon(Icons.attach_money),
                              color: Colors.white,
                              iconSize: 30,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  );
                }
              },
            )),
      ),
    );
  }
}
