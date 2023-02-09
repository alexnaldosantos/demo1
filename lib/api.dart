import 'dart:convert';
import 'package:demo1/post.dart';
import 'package:http/http.dart' as http;

abstract class Api {
  Future<List<Post>> getPosts();
}

class ApiImpl extends Api {
  @override
  Future<List<Post>> getPosts() async {
    const url = 'https://jsonplaceholder.typicode.com/posts';

    final client = http.Client();
    final response = await client.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> jsonPosts = jsonDecode(response.body);
      List<Post> posts = jsonPosts.map((post) => Post.fromJson(post)).toList();
      return posts;
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
