import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:vantan/Service/global.dart';

class AuthService {
  //dang ky
  static Future<http.Response> register(
      String username, String email, String password, String repassword) async {
    Map data = {
      "username": username,
      "email": email,
      "password": password,
      "repassword": repassword,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + "auth/register");
    http.Response response = await http.post(url, body: body, headers: headers);
    print(body);
    return response;
  }

  //dang nhap
  static Future<http.Response> login(String username, String password) async {
    Map data = {
      "username": username,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + "auth/login");
    http.Response response = await http.post(url, body: body, headers: headers);
    print(body);
    return response;
  }
}
