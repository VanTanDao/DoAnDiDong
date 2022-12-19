import 'dart:convert';

import 'package:vantan/Quiz/giaodienchoi.dart';
import 'package:vantan/Service/linhvucobject.dart';
import 'package:http/http.dart' as http;

class linhvucProvider {
  static List<PackageQuestion> parsePackage(String responseBody) {
    final parsed = jsonDecode(responseBody);
    final data = parsed["linhvuc"];
    print(data);
    data.cast<Map<String, dynamic>>();
    return data
        .map<PackageQuestion>((e) => PackageQuestion.fromJson(e))
        .toList();
  }

  static Future<List<PackageQuestion>> fetchPackage() async {
    final response =
        await http.get(Uri.parse('http://10.0.2.2:8000/api/auth/linhvuc'));
    print(response);
    return parsePackage(response.body);
  }

  static getAllContacts() {}
}
