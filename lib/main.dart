import 'package:vantan/doimatkhau.dart';
import 'package:vantan/giaodienchoi.dart';
import 'package:vantan/giaodienstar.dart';
import 'package:vantan/login.dart';
import 'package:vantan/quanlithongtin.dart';
import 'package:vantan/quenmatkhau.dart';
import 'package:vantan/register.dart';
import 'package:flutter/material.dart';
import 'package:vantan/thongtinchitiet.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Login(),
    );
  }
}
