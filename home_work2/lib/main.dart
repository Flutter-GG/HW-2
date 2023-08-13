import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:home_work2/models/posts_model.dart';
import 'package:home_work2/screens/home_screen.dart';

List<Posts>? PostsList = [];
void main() {
  File postsFile =
      File("/Users/huss/Desktop/HW-2/home_work2/lib/data/dataset.json");
  var stringPosts = postsFile.readAsStringSync();

  var postsData = json.decode(stringPosts);
  //print(postsData);

  for (var element in postsData["posts"]) {
    PostsList!.add(Posts.fromJson(element));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
