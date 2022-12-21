import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vantan/doimatkhau.dart';
import 'package:vantan/Quiz/giaodienchoi.dart';
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
  int? id;
  String? username;
  String? email;
  int? diem;
  int? sodu;
  void get() async {
    final prefs = await SharedPreferences.getInstance();
    id = prefs.getInt('id');
    username = prefs.getString('username');
    email = prefs.getString('email');
    diem = prefs.getInt('diem');
    sodu = prefs.getInt('sodu');
  }

  @override
  void initState() {
    super.initState();
    get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 10, 12),
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
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixText: username,
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixText: email,
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Điểm',
                prefixText: diem.toString(),
                prefixIcon: Icon(Icons.analytics_outlined),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Số dư',
                prefixText: sodu.toString(),
                prefixIcon: Icon(Icons.attach_money_sharp),
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
