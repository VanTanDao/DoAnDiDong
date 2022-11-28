import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/giaodienchoi.dart';
import 'package:vantan/thongtinchitiet.dart';

class DoiMatKhau extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 172, 249),
        elevation: 4.0,
        actions: [
          // IconButton(onPressed: () {}, icon: Icon(Icons.volume_mute)),
        ],
        // title: const Text('Đăng Nhập'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        color: Color.fromARGB(255, 14, 125, 235),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: Icon(
                  Icons.person_pin,
                  size: 150,
                  color: Color.fromARGB(255, 63, 64, 64),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Đổi mật khẩu',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 6, 7, 7),
                      fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  style: TextStyle(fontSize: 10, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Mât Khẩu Cũ',
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  style: TextStyle(fontSize: 10, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Mât Khẩu Mới',
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  style: TextStyle(fontSize: 10, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Nhập Lại Mât Khẩu Mới',
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),

              // Container(
              //   padding: const EdgeInsets.only(
              //     top: 10,
              //     left: 170,
              //     right: 170,
              //   ),
              //   child: Container(
              //     width: double.infinity,
              //     height: 20,
              //     decoration: BoxDecoration(
              //         // boxShadow: [
              //         //   // BoxShadow(
              //         //   //   color: Colors.grey,
              //         //   //   spreadRadius: 1,
              //         //   //   blurRadius: 1,
              //         //   //   offset: const Offset(0, 3),
              //         //   // ),
              //         // ],
              //         color: Color.fromARGB(255, 255, 252, 252),
              //         borderRadius:
              //             const BorderRadius.all(Radius.circular(20))),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //          TextButton(onPressed:()
              //          Navigator(), child: child)
              //         Icon(Icons.done,
              //             color: Color.fromARGB(255, 36, 113, 177)),
              //         // SizedBox(width: 10),
              //         const Text(
              //           'Gửi',
              //           style: TextStyle(
              //             fontSize: 15,
              //             // fontWeight: fontWeight.bold,
              //             color: Color.fromARGB(255, 236, 9, 28),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Xác Nhận',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 225, 228, 231),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
