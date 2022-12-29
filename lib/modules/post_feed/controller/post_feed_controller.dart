import 'dart:convert';

import 'package:api_project/modules/post_feed/network/post_feed_network_calls.dart';
import 'package:get/get.dart';

import '../models/post_data_model.dart';
import 'package:http/http.dart' as http;

class PostFeedController extends GetxController {
  List<PostDataModel> allPost = [];
  void makeTodoAPICall() {
    PostFeedNetworkCalls.getPostFeedData().then((decoded) => {
          for (int i = 0; i < decoded.length; i++)
            {allPost.add(PostDataModel.fromJson(decoded[i])), update()}
        });
  }

  @override
  onInit() {
    super.onInit();
    print('Controller init state called');
    makeTodoAPICall();
  }
}
