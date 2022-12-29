import 'dart:convert';

import 'package:http/http.dart' as http;

class EmployeeDataNetworkCalls {
  static Future<dynamic> getEmployeeData() async {
    dynamic decoded;
    var response = await http
        .get(Uri.parse("https://dummy.restapiexample.com/api/v1/employee/1"));
    decoded = jsonDecode(response.body);
    return decoded;
  }
}
