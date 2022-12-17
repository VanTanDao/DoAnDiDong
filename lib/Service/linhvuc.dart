import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

var link = "http://127.0.0.1:8000/api/auth/linhvuc";

getLinhvuc() async {
  var res = await http.get(Uri.parse(link));
  // print("data is loaded1111");
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    print("data is loaded");
    return data;
  }
  return res;
}
