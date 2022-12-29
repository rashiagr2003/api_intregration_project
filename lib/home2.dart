// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';

// class Home3Screen extends StatefulWidget {
//   const Home3Screen({Key? key}) : super(key: key);

//   @override
//   State<Home3Screen> createState() => _Home3ScreenState();
// }

// class _Home3ScreenState extends State<Home3Screen> {
//   Map? allEmployes;
//   void makeTodoAPICall() {
//     var decoded;
//     http
//         .get(Uri.parse("https://dummy.restapiexample.com/api/v1/employee/1"))
//         .then((value) => {
//               print(value.body),
//               decoded = jsonDecode(value.body),
//               setState(() {
//                 allEmployes = decoded['data'];
//               })
//             });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     makeTodoAPICall();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
      // body: allEmployes == null
      //     ? CircularProgressIndicator()
      //     : Card(
      //         child: Column(
      //           children: [
      //             Text("Name :" + " " + allEmployes!['employee_name']),
      //             Text("Salary :" +
      //                 "  " +
      //                 allEmployes!['employee_salary'].toString()),
      //             Text("Age : " + allEmployes!['employee_age'].toString())
      //           ],
      //         ),
//             ),
//     );
//   }
// }
