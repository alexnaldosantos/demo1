import 'dart:ui';

import 'package:demo1/post.dart';
import 'package:demo1/postrepository.dart';
import 'package:get_it/get_it.dart';

typedef SetStateCallback = void Function(VoidCallback fn);

class PostViewModel {
  final _repository = GetIt.I.get<PostRepository>();

  List<Post> posts = [];

  void loadPosts(SetStateCallback onComplete) async {
    posts = await _repository.getPosts();
    onComplete.call(() => {});
  }
}
