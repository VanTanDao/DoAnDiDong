import 'package:flutter/cupertino.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:vantan/Quiz/colors.dart';
import 'package:vantan/Quiz/quiztions_sceen.dart';
import 'package:vantan/Quiz/text_style.dart';
import 'package:vantan/Service/linhvuc.dart';
import 'package:vantan/Service/linhvucobject.dart';
import 'package:vantan/trang_chu.dart';
import 'package:get/get.dart';

import '../Service/user.dart';

class GiaodienchoiScreen extends StatefulWidget {
  User? user;
  GiaodienchoiScreen({Key? key, required this.user}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MenuScreenState();
  }
}

class MenuScreenState extends State<GiaodienchoiScreen> {
  List<PackageQuestion> lsProducts = [];
  void _LoadDanhSach() async {
    final data = await linhvucProvider.fetchPackage();
    setState(() {});
    lsProducts = data;
  }

  @override
  void initState() {
    super.initState();
    _LoadDanhSach();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 100),
            child: Text(
              'Chọn Lĩnh Vực',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 7, 105, 234),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.20,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Container(
                  padding: EdgeInsets.only(left: 30, right: 20, top: 50),
                  width: Get.size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 30,
                          ),
                          itemCount: lsProducts.length,
                          itemBuilder: (context, index) {
                            if (lsProducts.length > 0) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuizScreen(
                                        category: lsProducts[index].id,
                                        user: this.widget.user,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  height: 90,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.red,
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 1),
                                        ),
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Colors.red,
                                            Colors.yellow,
                                          ])),
                                  child: Center(
                                      child: AutoSizeText(
                                    lsProducts[index].tenlv,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                              );
                            } else {
                              return Center(
                                child: Text('Error'),
                              );
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
