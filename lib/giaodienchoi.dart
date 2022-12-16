import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/Quiz/quiztions_sceen.dart';
import 'package:vantan/Quiz/text_style.dart';
import 'package:vantan/trang_chu.dart';

class Giaodienchoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 4.0,
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.brightness_high)),
        // ],
        // title: const Text('Đăng Nhập'),
        leading: IconButton(
            // onPressed: () {
            //   Navigator.of(context).pushAndRemoveUntil(
            //       MaterialPageRoute(
            //         builder: (context) => TrangChu(),
            //       ),
            //       (Route<dynamic> route) => false);
            // },
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        color: Color.fromARGB(255, 0, 140, 255),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              // Image.asset(
              //   "icons/logo_1.webp",
              //   height: 200,
              //   width: 200,
              // ),
              // SizedBox(height: 50),

              Container(
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Chọn Lĩnh Vực Câu Hỏi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 6, 6, 6),
                      fontSize: 25),
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(16),
              //     border: Border.all(color: Colors.black, width: 2),
              //   ),
              //   child: TextButton.icon(
              //       onPressed: null,
              //       icon: const Icon(CupertinoIcons.money_dollar,
              //           color: Colors.white, size: 20),
              //       label: normalText(
              //         color: Colors.white,
              //         size: 10,
              //         text: "2000",
              //       )),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // title: Text('Đăng Nhập'),
                            content:
                                Text('Bạn có chắc chọn đúng lĩnh vực chưa ? '),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Không')),
                              TextButton(
                                  onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => QuizScreen(),
                                        ),
                                      ),
                                  child: Text('Có')),
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Âm Nhạc',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 242, 243, 244),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // title: Text('Đăng Nhập'),
                            content:
                                Text('Bạn có chắc chọn đúng lĩnh vực chưa'),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => QuizScreen(),
                                        ),
                                      ),
                                  child: Text('OK'))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Thể Thao',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 242, 243, 244),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // title: Text('Đăng Nhập'),
                            content:
                                Text('Bạn có chắc chọn đúng lĩnh vực chưa'),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => QuizScreen(),
                                        ),
                                      ),
                                  child: Text('OK'))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Giải trí',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 242, 243, 244),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // title: Text('Đăng Nhập'),
                            content:
                                Text('Bạn có chắc chọn đúng lĩnh vực chưa'),
                            actions: [
                              TextButton(
                                  onPressed: () =>
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Giaodienchoi(),
                                          ),
                                          (Route<dynamic> route) => false),
                                  child: Text('OK'))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Toán Học',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 242, 243, 244),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(15),
              //   child: Container(
              //     width: double.infinity,
              //     height: 60,
              //     decoration: BoxDecoration(
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey,
              //             spreadRadius: 1,
              //             blurRadius: 1,
              //             offset: const Offset(0, 3),
              //           ),
              //         ],
              //         color: Color.fromARGB(255, 118, 116, 116),
              //         borderRadius:
              //             const BorderRadius.all(Radius.circular(20))),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         // TextButton(onPressed: onPressed, child: child)
              //         Icon(Icons.done,
              //             color: Color.fromARGB(255, 36, 113, 177)),
              //         SizedBox(width: 10),
              //         const Text(
              //           'Công Nghệ',
              //           style: TextStyle(
              //             fontSize: 25,
              //             // fontWeight: fontWeight.bold,
              //             color: Color.fromARGB(255, 236, 9, 28),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 500,
                width: 500,
              )
            ],
          ),
        ),
      ),
    );
  }
}
