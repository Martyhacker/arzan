import 'dart:convert';

import 'package:arzan/core/api/models/post_model.dart';
import 'package:arzan/core/api/routes.dart';
import 'package:http/http.dart' as http;

class PostService {
  fetchDiscounts({required int limit}) async {
    var response =
        await http.get(Uri.https(Routes.api, Routes.version+ Routes.postsAll, {"categoryId": "1", "limit":"$limit"}));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body)['posts'];
      List<PostModel> discounts = [];
      for (var dc in jsonData) {
        PostModel discount = PostModel(
            id: dc['id'],
            title: dc['title'] ?? '',
            content: dc['content'],
            contacts: dc['contacts'],
            images: dc['images'],
            updatedAt: dc['updatedAt'],
            favoriteCount: dc['favoriteCount'],
            likeCount: dc['likeCount'],
            shareCount: dc['shareCount'],
            viewCount: dc['viewCount']);
        discounts.add(discount);
      }
      return discounts;
    } else {
      return Exception('Post getting error');
    }
  }
}
