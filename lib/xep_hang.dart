import 'package:flutter/material.dart';
import 'package:vantan/trang_chu.dart';

class XepHang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
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
                  builder: (context) => TrangChu(),
                ),
                (Route<dynamic> route) => false);
          },
          icon: Icon(Icons.arrow_back_sharp),
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
            child: Icon(
              Icons.analytics_sharp,
              size: 250,
              color: Colors.white,
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
                          'Bảng Xếp Hạng',
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
                          'Hạng 1',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 1',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 1',
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
                          'Hạng 2',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 2',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 2',
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
                          'Hạng 3',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 3',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 3',
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
                          'Hạng 4',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 4',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 4',
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
                          'Hạng 5',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 5',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Hạng 5',
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
