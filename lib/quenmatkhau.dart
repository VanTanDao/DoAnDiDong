import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quenmatkau extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 4.0,
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.volume_mute)),
        // ],
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
                  Icons.person_outline,
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
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 170,
                  right: 170,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Thông báo'),
                            content:
                                Text('Đã gửi mật khẩu mới về gmail của bạn'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Gửi',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 242, 243, 244),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 140,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
