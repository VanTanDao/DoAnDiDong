import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String baseURL = "http://10.0.2.2:8000/api/";
Map<String, String> headers = {"Content-Type": "application/json"};

errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar((SnackBar(
    content: Text(text),
    backgroundColor: Colors.blue,
    duration: Duration(seconds: 2),
  )));
}
