import 'dart:developer';

import 'package:api_calling_with_bloc/data/post_item.dart';
import 'package:api_calling_with_bloc/data/repository/api/api.dart';
import 'package:dio/dio.dart';

class PostRepository{
  API _api = API();
  Future<List<PostItem>> fetchPosts() async {
    try {
      Response response = await _api.sendRequest.get("/posts");
      List<dynamic> postMaps = response.data;
      return postMaps.map((postMap) => PostItem.fromJson(postMap)).toList();
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}