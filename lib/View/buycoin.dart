import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/trang_chu.dart';

class BuyBrains extends StatefulWidget {
  BuyBrains({super.key});
  @override
  State<BuyBrains> createState() {
    return BuyBrainsState();
  }
}

class BuyBrainsState extends State<BuyBrains> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/nen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 10.0, left: 10.0),
                child: ListView(
                  children: <Widget>[
                    _field('80', '20.000', 'images/coin.jpg'),
                    _field('500', '150.000', 'images/coin.jpg'),
                    _field('1200', '420.000', 'images/coin.jpg'),
                    _field('2500', '700.000', 'images/coin.jpg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _field(String brain, String field, String image) {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 30),
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(151, 128, 138, 145),
              border: Border.all(
                  color: Colors.white, width: 3.0, style: BorderStyle.solid),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 10),
              child: ListTile(
                leading: Image(
                  image: AssetImage(image),
                  height: 50,
                  width: 50,
                ),
                title: Text(
                  textAlign: TextAlign.left,
                  brain,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 2,
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrangChu(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          field,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            letterSpacing: 0,
                          ),
                        ),
                        Text(
                          'đ',
                          style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 1,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
