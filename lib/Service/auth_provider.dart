import 'dart:convert';

import 'package:vantan/Service/global.dart';
import 'package:http/http.dart' as http;

class AuthProvider {
  static Future<http.Response> register(
      String account, String email, String password) async {
    Map data = {
      "account": account,
      "email": email,
      "password": password,
    };
    var body = jsonEncode(data);
    var url = Uri.parse(baseURL + "auth/register");
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}
