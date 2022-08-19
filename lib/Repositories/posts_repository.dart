import 'package:flutter/cupertino.dart';
import 'package:masterclass_app/datasources/posts_datasource.dart';
import 'package:masterclass_app/models/post/post_model.dart';

class PostsRepository extends ChangeNotifier {
  final _datasource = PostDatasource();

  Future<List<PostModel>> getAllPosts() async {
    try {
      List list = await _datasource.getAllPosts();
      final posts = list
          .map((e) => PostModel(
              userId: e["userId"],
              id: e['id'],
              title: e["title"],
              body: e["body"]))
          .toList();
      notifyListeners();
      return posts;
    } catch (e) {
      List<PostModel> posts = [];
      return posts;
    }
  }
}
