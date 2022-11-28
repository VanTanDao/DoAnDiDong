import 'package:flutter/material.dart';
import 'package:vantan/giaodienchoi.dart';
import 'package:vantan/giaodienstar.dart';
import 'package:vantan/quenmatkhau.dart';
import 'package:vantan/View/register.dart';
import 'package:vantan/trang_chu.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 172, 249),
        actions: [
           IconButton(onPressed: () {
            showAboutDialog(context: context,
            applicationName:"HƯỚNG DẪN CHƠI",
            children: [
              Text("1. Người chơi có duy nhất 1 lượt chơi."),
              Text("2. Mỗi lượt chơi sẽ gồm 4 đáp án cho mỗi câu hỏi."),
              Text("3. Người chơi sẽ có 5 sự trợ giúp ở mỗi lượt chơi."),
              Text("4. Mỗi sự trợ giúp chỉ được sử dụng 1 lần cho 1 lượt chơi"),
              Text("5. Khi trả lơi sai sẽ kết thúc lượt chơi")
            ],);
           }, icon: Icon(Icons.integration_instructions_outlined)),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 40, 156, 240),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: Image(
                  height: 200,
                  width: 250,
                  image: AssetImage("images/logo_final.png"),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: const Text(
                  'Đăng Nhập Tài Khoản',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 6, 7, 7),
                      fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'UserName',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.all(15),
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     child: const Text('Đăng Ký'),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 12),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Đăng Nhập'),
                            content:
                                Text('Chúc mừng bạn đã dăng nhập thành công'),
                            actions: [
                              TextButton(
                                  onPressed: () =>
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                            builder: (context) => TrangChu(),
                                          ),
                                          (Route<dynamic> route) => false),
                                  child: Text('OK'))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Đăng nhập',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 242, 243, 244),
                    ),
                  ),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(top: 10, left: 120, right: 120),
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
              //         color: Color.fromARGB(255, 255, 252, 252),
              //         borderRadius:
              //             const BorderRadius.all(Radius.circular(10))),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         // TextButton(onPressed: onPressed, child: child)
              //         Icon(Icons.done,
              //             color: Color.fromARGB(255, 36, 113, 177)),
              //         // SizedBox(width: 10),
              //         const Text(
              //           'Đăng Nhập',
              //           style: TextStyle(
              //             fontSize: 20,
              //             // fontWeight: fontWeight.bold,
              //             color: Color.fromARGB(255, 236, 9, 28),
              //           ),
              //         ),
              //       ],
              //     ),
              //     // padding: const EdgeInsets.all(15),
              //     // child: ElevatedButton(
              //     //   onPressed: () {},
              //     //   child: const Text(
              //     //     'LOG IN',
              //     //     style: TextStyle(
              //     //       fontSize: 20,
              //     //       color: Color.fromARGB(255, 36, 113, 177),
              //     //     ),
              //     //   ),
              //     // ),
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Quenmatkau(),
                          ),
                        );
                      },
                      child: const Text(
                        'Quên Mật Khẩu',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 232, 233, 235),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      child: const Text(
                        'Đăng Ký',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 232, 233, 235),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 175,
              //   width: 200,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
