import 'package:flutter/cupertino.dart';

import 'package:masterclass_app/models/post/post_model.dart';

abstract class IPostsRepository {
  Future<List<PostModel>> getAllPosts();
}

class PostsController extends ChangeNotifier {
  final IPostsRepository service;

  PostsController(this.service);

  List<PostModel> posts = [];

  getPosts() async {
    posts = await service.getAllPosts();
    notifyListeners();
  }
}
