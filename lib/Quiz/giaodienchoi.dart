import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/Quiz/colors.dart';
import 'package:vantan/Quiz/quiztions_sceen.dart';
import 'package:vantan/Quiz/text_style.dart';
import 'package:vantan/Service/linhvuc.dart';
import 'package:vantan/trang_chu.dart';

class GiaodienchoiScreen extends StatefulWidget {
  const GiaodienchoiScreen({Key? key}) : super(key: key);

  @override
  State<GiaodienchoiScreen> createState() => _GiaodienchoiScreenState();
}

class _GiaodienchoiScreenState extends State<GiaodienchoiScreen> {
  var currentLinhvucIndex = 0;

  var isLoaded = false;

  var optionsList = [];

  late Future linhvuc;

  @override
  void initState() {
    linhvuc = getLinhvuc();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [blue, darkBlue],
              ),
            ),
            child: FutureBuilder(
                future: linhvuc,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    var data = snapshot.data["linhvuc"];
                    if (isLoaded == false) {
                      optionsList.add(data[currentLinhvucIndex]["tenlv"]);

                      isLoaded = true;
                    }
                    return SingleChildScrollView(
                      child: Column(children: [
                        ListView.builder(
                            itemCount: optionsList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector();
                            })
                      ]),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    );
                  }
                })),
      ),
    );
  }
}
