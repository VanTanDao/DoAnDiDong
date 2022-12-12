import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vantan/View/login.dart';
import 'package:vantan/giaodienchoi.dart';
import 'package:vantan/thongtinchitiet.dart';
import 'package:vantan/xep_hang.dart';

class TrangChu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/nen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Image(
                height: 250,
                width: 250,
                image: AssetImage("images/logo_final.png"),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Giaodienchoi()));
                },
                // onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //       builder: (context) => Giaodienchoi(),
                //     ),
                //     (Route<dynamic> route) => false),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThongTinChiTiet(),
                    ),
                  );
                },
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
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                          (Route<dynamic> route) => false);
                      // giai thich remove may het may trang trc r moi push cai nay len

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: const Text('Đăng xuất',
                        style: TextStyle(decoration: TextDecoration.underline)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
