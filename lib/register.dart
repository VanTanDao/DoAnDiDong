import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: const Text('Đào Văn Tân_0306201179'),
      // ),
      body: Container(
        color: Color.fromARGB(255, 235, 237, 236),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Icon(
                  Icons.person_pin,
                  size: 100,
                  color: Color.fromARGB(255, 212, 31, 31),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Đăng Ký Tài Khoản',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 110, 223),
                      fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'UserName',
                    labelStyle: TextStyle(fontSize: 15),
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
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
              /*Container(
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter the password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),*/
              Container(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Đăng Ký'),
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.all(15),
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
