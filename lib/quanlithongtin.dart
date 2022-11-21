import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/giaodienstar.dart';
import 'package:vantan/thongtinchitiet.dart';

class QuanLiThongTin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: ListView(
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text('Hình'),
              ),
              title: Text('ID'),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Tài khoản'),
                  Text('Gmail'),
                  Text('Đổi Mật Khẩu')
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThongTinChiTiet(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
