import 'package:flutter/cupertino.dart';
import 'package:masterclass_app/datasources/posts_datasource.dart';
import 'package:masterclass_app/models/post/post_model.dart';

class PostsRepository extends ChangeNotifier {
  final _datasource = PostDatasource();
  List<PostModel> listPost = [];

  Future<List<PostModel>> getAllPosts() async {
    try {
      List list = await _datasource.getAllPosts();
      listPost = list
          .map((e) => PostModel(
              userId: e["userId"],
              id: e['id'],
              title: e["title"],
              body: e["body"]))
          .toList();
      notifyListeners();
    } catch (e) {
      listPost = [];
    }

    return listPost;
  }
}
