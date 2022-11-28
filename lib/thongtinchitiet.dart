import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vantan/doimatkhau.dart';
import 'package:vantan/giaodienchoi.dart';
import 'package:vantan/trang_chu.dart';

class ThongTinChiTiet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ThongTinChiTietState();
  }
}

class ThongTinChiTietState extends State<ThongTinChiTiet> {
  TextEditingController txtId = TextEditingController();
  TextEditingController txtTaiKhoan = TextEditingController();
  TextEditingController txtGamil = TextEditingController();
  TextEditingController txtPhone = TextEditingController();

  @override
  void initState() {
    super.initState();
    txtId.text = 'ID';
    txtTaiKhoan.text = 'Tài Khoản';
    txtGamil.text = 'Gmail';
    txtPhone.text = '0123456789';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 156, 240),
        elevation: 4.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        // title: const Text('Đăng Nhập'),
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => QuanLiThongTin(),
        //         ),
        //       );
        //     },
        //    icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
              'Thông tin tài khoản',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 6, 7, 7),
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: txtId,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'ID ',
                prefixIcon: Icon(Icons.perm_identity),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: txtTaiKhoan,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.accessibility),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: txtPhone,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Phone',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: txtGamil,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Gmail',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                // showDialog(
                //     context: context,
                //     builder: (context) {
                //       return AlertDialog(
                //         title: Text('Thông báo'),
                //         content: Text('Chúc mừng bạn đã đăng ký thành công'),
                //         actions: [
                //           TextButton(
                //               onPressed: () =>
                //                   Navigator.of(context).pushAndRemoveUntil(
                //                       MaterialPageRoute(
                //                         builder: (context) => DoiMatKhau(),
                //                       ),
                //                       (Route<dynamic> route) => false),
                //               child: Text('OK'))
                //         ],
                //       );
                //     });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DoiMatKhau()));
              },
              child: const Text(
                'Đổi mật khẩu',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 242, 243, 244),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
