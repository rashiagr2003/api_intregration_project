import 'dart:convert';

import 'package:api_project/home2.dart';
import 'package:api_project/modules/post_feed/controller/post_feed_controller.dart';
import 'package:api_project/modules/post_feed/models/post_data_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PostFeedPage extends GetView<PostFeedController> {
  const PostFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          // ]
          ),
      body: GetBuilder<PostFeedController>(
          init: PostFeedController(),
          builder: (controller) {
            return Container(
              child: controller.allPost.isEmpty
                  ? CircularProgressIndicator()
                  : ListView.builder(
                      itemCount: controller.allPost.length,
                      itemBuilder: ((context, index) {
                        return Text(controller.allPost[index].body!);
                      })),
            );
          }),
    );
  }
}
