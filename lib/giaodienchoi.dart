import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Giaodienchoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 4.0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.brightness_high)),
        ],
        // title: const Text('Đăng Nhập'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.volume_up)),
      ),
      body: Container(
        color: Color.fromARGB(255, 208, 205, 205),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset(
                "images/ailatrieuphu.jpg",
                // height: 200,
                // width: 200,
              ),
              // SizedBox(height: 50),

              Container(
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Chọn Lĩnh Vực Câu Hỏi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 110, 223),
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Color.fromARGB(255, 118, 116, 116),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // TextButton(onPressed: onPressed, child: child)
                      Icon(Icons.done,
                          color: Color.fromARGB(255, 36, 113, 177)),
                      SizedBox(width: 10),
                      const Text(
                        'Khoa Học',
                        style: TextStyle(
                          fontSize: 25,
                          // fontWeight: fontWeight.bold,
                          color: Color.fromARGB(255, 236, 9, 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Color.fromARGB(255, 118, 116, 116),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // TextButton(onPressed: onPressed, child: child)
                      Icon(Icons.done,
                          color: Color.fromARGB(255, 36, 113, 177)),
                      SizedBox(width: 10),
                      const Text(
                        'Lịch Sử',
                        style: TextStyle(
                          fontSize: 25,
                          // fontWeight: fontWeight.bold,
                          color: Color.fromARGB(255, 236, 9, 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Color.fromARGB(255, 118, 116, 116),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // TextButton(onPressed: onPressed, child: child)
                      Icon(Icons.done,
                          color: Color.fromARGB(255, 36, 113, 177)),
                      SizedBox(width: 10),
                      const Text(
                        'Thế Thao',
                        style: TextStyle(
                          fontSize: 25,
                          // fontWeight: fontWeight.bold,
                          color: Color.fromARGB(255, 236, 9, 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Color.fromARGB(255, 118, 116, 116),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // TextButton(onPressed: onPressed, child: child)
                      Icon(Icons.done,
                          color: Color.fromARGB(255, 36, 113, 177)),
                      SizedBox(width: 10),
                      const Text(
                        'Âm Nhạc',
                        style: TextStyle(
                          fontSize: 25,
                          // fontWeight: fontWeight.bold,
                          color: Color.fromARGB(255, 236, 9, 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Color.fromARGB(255, 118, 116, 116),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // TextButton(onPressed: onPressed, child: child)
                      Icon(Icons.done,
                          color: Color.fromARGB(255, 36, 113, 177)),
                      SizedBox(width: 10),
                      const Text(
                        'Công Nghệ',
                        style: TextStyle(
                          fontSize: 25,
                          // fontWeight: fontWeight.bold,
                          color: Color.fromARGB(255, 236, 9, 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
