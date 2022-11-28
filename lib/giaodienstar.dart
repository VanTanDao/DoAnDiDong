import 'package:flutter/material.dart';
import 'package:vantan/main.dart';
import 'package:vantan/trang_chu.dart';

class GiaoDienStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 4.0,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.add_shopping_cart_sharp)),
          // IconButton(
          //     onPressed: () {},
          //     icon: Icon(Icons.align_vertical_bottom_outlined)),
        ],
        leading: IconButton(
            onPressed: () {
              // Navigator.push(context)=;
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Container(
          // padding: const EdgeInsets.all(),
          child: Container(
            color: Color.fromARGB(255, 4, 118, 225),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.alarm,
                      size: 50,
                      color: Color.fromARGB(255, 229, 24, 24),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 50,
                    width: double.infinity,
                    child: const Text(
                      'Câu Hỏi:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 7, 8, 10),
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, right: 15, left: 15),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 0, 0, 0),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          color: Color.fromARGB(255, 251, 250, 250),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // TextButton(onPressed: onPressed, child: child)
                          // Icon(Icons.done,
                          //     color: Color.fromARGB(255, 36, 113, 177)),
                          SizedBox(width: 10),
                          const Text(
                            'A:',
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: fontWeight.bold,
                              color: Color.fromARGB(255, 236, 9, 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 0, 0, 0),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          color: Color.fromARGB(255, 251, 250, 250),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // TextButton(onPressed: onPressed, child: child)
                          // Icon(Icons.done,
                          //     color: Color.fromARGB(255, 36, 113, 177)),
                          SizedBox(width: 10),
                          const Text(
                            'B:',
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: fontWeight.bold,
                              color: Color.fromARGB(255, 236, 9, 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 0, 0, 0),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          color: Color.fromARGB(255, 251, 250, 250),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // TextButton(onPressed: onPressed, child: child)
                          // Icon(Icons.done,
                          //     color: Color.fromARGB(255, 36, 113, 177)),
                          SizedBox(width: 10),
                          const Text(
                            'C:',
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: fontWeight.bold,
                              color: Color.fromARGB(255, 236, 9, 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 0, 0, 0),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          color: Color.fromARGB(255, 251, 250, 250),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // TextButton(onPressed: onPressed, child: child)
                          // Icon(Icons.done,
                          //     color: Color.fromARGB(255, 36, 113, 177)),
                          SizedBox(width: 10),
                          const Text(
                            'D:',
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: fontWeight.bold,
                              color: Color.fromARGB(255, 236, 9, 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 90, right: 15, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrangChu()));
                          },
                          icon: Icon(Icons.attach_money),
                          color: Colors.red,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrangChu()));
                          },
                          icon: Icon(Icons.next_plan),
                          color: Colors.red,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrangChu()));
                          },
                          icon: Icon(Icons.call_end),
                          color: Colors.red,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrangChu()));
                          },
                          icon: Icon(Icons.analytics),
                          color: Colors.red,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrangChu()));
                          },
                          icon: Icon(Icons.two_k_plus),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
