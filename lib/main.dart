import 'package:api_project/botttom.dart';
import 'package:api_project/home.dart';
import 'package:api_project/home1.dart';
import 'package:api_project/home2.dart';
import 'package:api_project/modules/post_feed/pages/employee_data_page.dart';
import 'package:api_project/modules/post_feed/pages/post_feed_page.dart';
import 'package:api_project/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: EmployeeDataPage(),
    );
  }
}
