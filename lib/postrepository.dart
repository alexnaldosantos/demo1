import 'package:demo1/api.dart';
import 'package:demo1/post.dart';
import 'package:get_it/get_it.dart';

class PostRepository {
  
  final _api = GetIt.I<Api>();

  Future<List<Post>> getPosts() async {
    return _api.getPosts();
  }
}
