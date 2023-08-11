import 'dart:convert';
import 'package:blog_app/models/blog_model.dart';
import 'package:blog_app/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<Blog> blogsList = [];
List<Blog> bookmarkList = [];
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    readJsonFile();
    super.initState();
  }

  Future<void> readJsonFile() async {
    final String response =
        await rootBundle.loadString('assets/data/data.json');
    final data = await json.decode(response);
    setState(() {
      for (var element in data["blogData"]) {
        blogsList.add(Blog.fromJson(element));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
