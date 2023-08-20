import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:project2_flutter_bootcamp/Screens/home_screen.dart';
import 'package:project2_flutter_bootcamp/Model/blog_data_model.dart';

List<BlogDataModel> listBlog = [];
List<BlogDataModel> listBlogSave = [];

Future<void> loadBlogData() async {
  String jsonString = await rootBundle.loadString('lib/Data/blog_data.json');
  var blogData = json.decode(jsonString);
  for (var element in blogData["BlogData"]) {
    listBlog.add(BlogDataModel.fromJson(element));
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadBlogData();
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
