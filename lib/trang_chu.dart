import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vantan/xep_hang.dart';

class TrangChu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
            child: Text(
              'Ai là triệu phú',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.blue,
              ),
            ),
          ),
          Container(
            width: 300,
            height: 100,
            // child: Image(
            //   image: AssetImage("assets/images/logo.jfif"),
            // ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Chơi trò chơi',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Quản lý thông tin tài khoản',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => XepHang(),
                  ),
                );
              },
              child: const Text(
                'Xem bảng xếp hạng',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Xem điểm số',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Nạp Credit',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Đăng xuất',
                      style: TextStyle(decoration: TextDecoration.underline)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
