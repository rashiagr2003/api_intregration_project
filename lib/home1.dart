// import 'dart:convert';

// import 'package:api_project/home2.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Home1Screen extends StatefulWidget {
//   const Home1Screen({Key? key}) : super(key: key);

//   @override
//   State<Home1Screen> createState() => _Home1ScreenState();
// }

// class _Home1ScreenState extends State<Home1Screen> {
//   List? allEmployes;
//   void makeTodoAPICall() {
//     var decoded;
//     http
//         .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
//         .then((value) => {
//               print(value.body),
//               decoded = jsonDecode(value.body),
//               setState(() {
//                 allEmployes = decoded;
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
//       appBar: AppBar(actions: [
//         ElevatedButton(
//             onPressed: () {
//               makeTodoAPICall();
//             },
//             child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Home3Screen()));
//                 },
//                 child: Text("Call")))
//       ]),
//       body: allEmployes == null
//           ? CircularProgressIndicator()
//           : ListView.builder(
//               itemCount: allEmployes!.length,
//               itemBuilder: ((context, index) {
//                 return Text(allEmployes![index]['body']);
//               })),
//     );
//   }
// }
