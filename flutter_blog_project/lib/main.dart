import 'package:flutter/material.dart';
import 'package:flutter_blog_project/data_related_files/blog_data.dart';
import 'package:flutter_blog_project/data_related_files/data_model.dart';
import 'package:flutter_blog_project/screens/home_screen.dart';

List<BlogModel> blogList = []; //define my list of objects
void main() {
  //adding my data in the list as object
  for (var element in blogData) {
    blogList.add(BlogModel.fromJson(element));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
