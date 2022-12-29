import 'dart:convert';

import 'package:http/http.dart' as http;

class PostFeedNetworkCalls {
  static Future<List<dynamic>> getPostFeedData() async {
    List<dynamic> decoded;
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    decoded = jsonDecode(response.body);
    return decoded;
  }
}
