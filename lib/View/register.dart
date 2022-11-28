import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/View/login.dart';
import 'package:vantan/giaodienchoi.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 40, 156, 240),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Icon(
                  Icons.person_pin,
                  size: 70,
                  color: Color.fromARGB(255, 63, 64, 64),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Đăng Ký Tài Khoản',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 2, 2),
                      fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 10),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Phone',
                    labelStyle: TextStyle(fontSize: 10),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'UserName',
                    labelStyle: TextStyle(fontSize: 10),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 10),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Repassword',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 10),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
              /*Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter the password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 10),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Đăng ký'),
                            content:
                                Text('Chúc mừng bạn đã đăng ký thành công'),
                            actions: [
                              TextButton(
                                  onPressed: () =>
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                            builder: (context) => Login(),
                                          ),
                                          (Route<dynamic> route) => false),
                                  child: Text('OK'))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Đăng ký',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 242, 243, 244),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 200,
              //   width: 200,
              // )
              // Container(
              //   padding: const EdgeInsets.all(10),
              //   alignment: Alignment.centerRight,
              //   child: TextButton(
              //     onPressed: () {},
              //     child: const Text(
              //       'Quên Mật Khẩu',
              //       style: TextStyle(decoration: TextDecoration.underline),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
