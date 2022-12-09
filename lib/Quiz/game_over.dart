import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/Quiz/colors.dart';
import 'package:vantan/Quiz/quiztions_sceen.dart';
import 'package:vantan/Quiz/text_style.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [blue, darkBlue],
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: lightgrey, width: 2),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.xmark,
                    color: Colors.white,
                    size: 25,
                  )),
            ),
            // Image.asset(
            //   "icons/logo_2.png",
            //   width: 250,
            //   height: 200,
            // ),
            // const SizedBox(height: 20),
            // normalText(color: lightgrey, size: 18, text: "Số câu hỏi"),
            // headingText(color: Colors.white, size: 32, text: "Quiz App"),
            // const SizedBox(height: 20),
            // normalText(
            //   color: lightgrey,
            //   size: 10,
            //   text: " Là số lượng câu hỏi minh tl",
            // ),
            // const Spacer(),
            // Align(
            //   alignment: Alignment.center,
            //   child: GestureDetector(
            //     onTap: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const QuizScreen()));
            //     },
            //     child: Container(
            //       margin: const EdgeInsets.only(bottom: 20),
            //       alignment: Alignment.center,
            //       width: size.width - 100,
            //       padding: const EdgeInsets.all(16),
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       child: headingText(color: blue, size: 18, text: "Continue"),
            //     ),
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
