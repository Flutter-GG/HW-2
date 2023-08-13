import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project2_flutter_bootcamp/Screens/home_screen.dart';

import 'Model/blog_data_model.dart';

List<BlogDataModel> listBlog = [];
List<BlogDataModel> listBlogSave = [];

void main() {
  File blogFile = File(
      "/Users/36nv/Desktop/Project2FlutterBootcamp/lib/Data/blog_data.json");
  var stringProduct = blogFile.readAsStringSync();
  var blogData = json.decode(stringProduct);
  for (var element in blogData["BlogData"]) {
    listBlog.add(BlogDataModel.fromJson(element));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
