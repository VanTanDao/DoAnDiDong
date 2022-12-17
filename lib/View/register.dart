import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/View/login.dart';
import 'package:vantan/Quiz/giaodienchoi.dart';
import 'package:vantan/trang_chu.dart';

import '../Service/auth.dart';
import '../Service/global.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController repassword = TextEditingController();
  createAccountPressed() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.text);
    if (emailValid) {
      http.Response response = await AuthService.register(
          username.text, email.text, password.text, repassword.text);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (BuildContext context) => TrangChu(),
        //     ));
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Đăng ký'),
                content: Text('Chúc mừng bạn đã đăng ký thành công'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                          (Route<dynamic> route) => false),
                      child: Text('OK'))
                ],
              );
            });
      } else {
        if (password.text.length < 8) {
          errorSnackBar(context, 'Mật khẩu ít nhất 8 ký tự');
        } else {
          if (password.text != repassword.text) {
            errorSnackBar(context, 'Xác nhận mật khẩu không khớp');
          } else
            errorSnackBar(context, 'Email hoặc tài khoản đã tồn tại');
        }
      }
    } else {
      errorSnackBar(context, 'Sai định dạng email');
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    username.dispose();
    email.dispose();
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

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
        color: Color.fromARGB(255, 40, 106, 240),
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
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: email,
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
              // Container(
              //   padding: const EdgeInsets.all(10),
              //   child: const TextField(
              //     keyboardType: TextInputType.phone,
              //     decoration: InputDecoration(
              //       filled: true,
              //       fillColor: Colors.white,
              //       labelText: 'Phone',
              //       labelStyle: TextStyle(fontSize: 10),
              //       border: OutlineInputBorder(),
              //       prefixIcon: Icon(Icons.phone),
              //     ),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  controller: username,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Tài khoản',
                    labelStyle: TextStyle(fontSize: 10),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  controller: password,
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
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  controller: repassword,
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
                    return createAccountPressed();
                    // showDialog(
                    //     context: context,
                    //     builder: (context) {
                    //       return AlertDialog(
                    //         title: Text('Đăng ký'),
                    //         content:
                    //             Text('Chúc mừng bạn đã đăng ký thành công'),
                    //         actions: [
                    //           TextButton(
                    //               onPressed: () => createAccountPressed(),
                    //               // Navigator.of(context).pushAndRemoveUntil(
                    //               //     MaterialPageRoute(
                    //               //       builder: (context) => TrangChu(),
                    //               //     ),
                    //               //     (Route<dynamic> route) => false),
                    //               child: Text('OK'))
                    //         ],
                    //       );
                    //     });
                  },
                  child: Text(
                    'Đăng ký',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 242, 243, 244),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 79,
                //   width: 200,
              )
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
