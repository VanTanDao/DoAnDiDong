import 'package:vantan/Quiz/game_over.dart';
import 'package:vantan/Quiz/quiztions_sceen.dart';
import 'package:vantan/doimatkhau.dart';
import 'package:vantan/giaodienchoi.dart';
import 'package:vantan/View/login.dart';
import 'package:vantan/quenmatkhau.dart';
import 'package:vantan/View/register.dart';
import 'package:flutter/material.dart';
import 'package:vantan/thongtinchitiet.dart';
import 'package:vantan/trang_chu.dart';
import 'package:vantan/xep_hang.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LoginScreen(), //fix 1
    );
  }
}
