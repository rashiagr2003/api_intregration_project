import 'dart:convert';

import 'package:api_project/home1.dart';
import 'package:api_project/modules/post_feed/pages/post_feed_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List? allEmployes;
  void makeTodoAPICall() {
    var decoded;
    http
        .get(Uri.parse("https://dummy.restapiexample.com/api/v1/employees"))
        .then((value) => {
              print(value.body),
              decoded = jsonDecode(value.body),
              setState(() {
                allEmployes = decoded['data'];
              })
            });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    makeTodoAPICall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
              onPressed: () {
                makeTodoAPICall();
              },
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PostFeedPage()));
                  },
                  child: Text("Call")))
        ],
      ),
      body: allEmployes == null
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: allEmployes!.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      allEmployes![index]["employee_name"] +
                          " " +
                          allEmployes![index]['employee_salary'].toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                );
              })),
    );
  }
}
