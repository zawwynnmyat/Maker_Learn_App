import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:maker_learn/tutorial_category.dart';
import 'post.dart';

// Mock recipe service that grabs sample json data to mock recipe request/response
class MockService {

  Future getExploreData() async {
    final articlePosts = await _getFriendFeed();

    return articlePosts;
  }
  // Get the sample friend json posts to display in ui
  Future<List<Post>> _getFriendFeed() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 500));
    // Load json from file system
    final dataString =
    await _loadAsset('assets/top_articles_data.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each post and convert json to Post object.
    if (json['feed'] != null) {
      final posts = <Post>[];
      json['feed'].forEach((v) {
        posts.add(Post.fromJson(v));
      });
      return posts;
    } else {
      return [];
    }
  }
  // Get the sample recipe json to display in ui
  Future<List<TutorialCategory>> getCategories() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 500));
    // Load json from file system
    final dataString = await _loadAsset('assets/tutorial_category.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to SimpleRecipe object.
    if (json['categories'] != null) {
      final tutorialCategories = <TutorialCategory>[];
      json['categories'].forEach((v) {
        tutorialCategories.add(TutorialCategory.fromJson(v));
      });
      return tutorialCategories;
    } else {
      return [];
    }
  }

  // Loads sample json data from file system
  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
