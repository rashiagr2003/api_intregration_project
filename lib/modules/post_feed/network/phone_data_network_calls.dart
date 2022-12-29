import 'dart:convert';

import 'package:http/http.dart' as http;

class PhoneDataNetworkCalls {
  static Future<dynamic> getPhoneData() async {
    dynamic decoded;
    var response = await http
        .get(Uri.parse("https://dummyjson.com/products/category/smartphones"));
    decoded = jsonDecode(response.body);
    return decoded;
  }
}
