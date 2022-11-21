import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vantan/giaodienchoi.dart';
import 'package:vantan/quanlithongtin.dart';

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
  TextEditingController txtDoimatkhau = TextEditingController();
  @override
  void initState() {
    super.initState();
    txtId.text = 'ID';
    txtTaiKhoan.text = 'Tài Khoản';
    txtGamil.text = 'Gmail';
    txtDoimatkhau.text = 'Đổi Mật khẩu';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin chi tiết'),
        backgroundColor: Color.fromARGB(255, 12, 10, 12),
        elevation: 4.0,
        actions: [
          // IconButton(onPressed: () {}, icon: Icon(Icons.volume_mute)),
        ],
        // title: const Text('Đăng Nhập'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuanLiThongTin(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                labelText: 'Tài Khoản',
                prefixIcon: Icon(Icons.accessibility),
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
                labelText: 'Gmail',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => ThongTinChiTiet(),
                ),
              );
            },
            child: Text(
              'Đổi Mật Khẩu',
              style: TextStyle(
                color: Color.fromARGB(255, 208, 23, 23),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
