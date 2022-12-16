import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

var link = "http://10.0.2.2:8000/api/auth/question";

getQuiz() async {
  var res = await http.get(Uri.parse(link));
  // print("data is loaded1111");
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    print("data is loaded");
    return data;
  }
  return res;
}
