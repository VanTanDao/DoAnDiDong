import 'package:flutter/material.dart';
import 'package:vantan/trang_chu.dart';

import 'Service/user.dart';

class XepHang extends StatefulWidget {
  User? user;
  XepHang({Key? key, required this.user}) : super(key: key);
  @override
  State<XepHang> createState() => _XepHangState();
}

class _XepHangState extends State<XepHang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => TrangChu(),
            //   ),
            // );
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => TrangChu(
                    user: this.widget.user,
                  ),
                ),
                (Route<dynamic> route) => false);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 40,
        ),
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          // Container(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       IconButton(
          //         onPressed: () {
          //           // Navigator.push(
          //           //   context,
          //           //   MaterialPageRoute(
          //           //     builder: (context) => TrangChu(),
          //           //   ),
          //           // );
          //           Navigator.pop(context);
          //         },
          //         icon: Icon(Icons.arrow_back_sharp),
          //         iconSize: 40,
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            child: Image(
              height: 200,
              width: 250,
              image: AssetImage("images/rank-removebg-preview.png"),
            ),
          ),
          // Container(
          //   child: Image(
          //     width: 300,
          //     height: 250,
          //     image: AssetImage("assets/images/logo.jfif"),
          //   ),
          // ),
          SizedBox(height: 50),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 450,
                  child: Card(
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'B???ng X???p H???ng',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 450,
                  child: Card(
                    color: Color.fromARGB(255, 53, 0, 243),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'H???ng 1',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Nguy???n V??n Anh Tu???n',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '6000',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 450,
                  child: Card(
                    color: Color.fromARGB(255, 53, 0, 243),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'H???ng 2',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'H???ng 2',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'H???ng 2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 450,
                  child: Card(
                    color: Color.fromARGB(255, 53, 0, 243),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'H???ng 3',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'H???ng 3',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'H???ng 3',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 450,
                  child: Card(
                    color: Color.fromARGB(255, 53, 0, 243),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'H???ng 4',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'H???ng 4',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'H???ng 4',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 450,
                  child: Card(
                    color: Color.fromARGB(255, 53, 0, 243),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'H???ng 5',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'H???ng 5',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'H???ng 5',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
