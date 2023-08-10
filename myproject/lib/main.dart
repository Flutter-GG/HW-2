import 'package:flutter/material.dart';
import 'package:myproject/model/my_model.dart';
import 'package:myproject/view/homeview.dart';

void main() {
  runApp(const MainApp());
}

List<Blog> listBlog = [];

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}
