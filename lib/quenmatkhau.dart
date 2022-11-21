import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quenmatkau extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 4.0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.volume_mute)),
        ],
        // title: const Text('Đăng Nhập'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        color: Color.fromARGB(255, 14, 125, 235),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Icon(
                  Icons.person_pin,
                  size: 150,
                  color: Color.fromARGB(255, 229, 24, 24),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Quên mật khẩu',
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
                    labelText: 'Gmail',
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 170,
                  right: 170,
                ),
                child: Container(
                  width: double.infinity,
                  height: 20,
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   // BoxShadow(
                      //   //   color: Colors.grey,
                      //   //   spreadRadius: 1,
                      //   //   blurRadius: 1,
                      //   //   offset: const Offset(0, 3),
                      //   // ),
                      // ],
                      color: Color.fromARGB(255, 255, 252, 252),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // TextButton(onPressed: onPressed, child: child)
                      Icon(Icons.done,
                          color: Color.fromARGB(255, 36, 113, 177)),
                      // SizedBox(width: 10),
                      const Text(
                        'Gửi',
                        style: TextStyle(
                          fontSize: 15,
                          // fontWeight: fontWeight.bold,
                          color: Color.fromARGB(255, 236, 9, 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
