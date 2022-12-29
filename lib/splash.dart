import 'package:api_project/home.dart';
import 'package:api_project/home1.dart';
import 'package:api_project/home2.dart';
import 'package:api_project/modules/post_feed/pages/post_feed_page.dart';
import 'package:flutter/material.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({Key? key}) : super(key: key);

  @override
  State<SplashScreeen> createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {
  double width1 = 100;
  double height1 = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Center(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 100,
                width: 175,
                child: Text(
                  "first",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PostFeedPage()));
            },
            child: Center(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 100,
                width: 175,
                child: Text(
                  "first",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PostFeedPage()));
            },
            child: Center(
              child: Transform.rotate(
                angle: 45,
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  height: 100,
                  width: 175,
                  child: Center(
                    child: Text(
                      "first",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              double newWidth = width1 == 100 ? 200 : 100;
              double newHeight = height1 == 100 ? 200 : 100;
              setState(() {
                width1 = newWidth;
                height1 = newHeight;
              });
            },
            icon: Icon(Icons.add_alert_outlined),
            label: Text("data"),
          ),
          AnimatedContainer(
            duration: Duration(seconds: 1),
            width: width1,
            height: height1,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
