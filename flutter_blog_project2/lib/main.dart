import 'package:flutter/material.dart';
import 'package:flutter_blog_project2/data_related_files/blog_data.dart';
import 'package:flutter_blog_project2/data_related_files/data_model.dart';
import 'package:flutter_blog_project2/screens/login_screen.dart';

List<BlogModel> blogList = []; //define my list of objects
List<BlogModel> specficUserPosts = []; //define a list of posts for the logged in user
int userId = 12; 

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
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
