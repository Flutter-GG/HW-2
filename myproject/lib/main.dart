import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myproject/model/my_model.dart';
import 'package:myproject/view/homeview.dart';

void main() {
  File blogfile =
      File("/Users/mrzogymagbool/Desktop/HW-2/myproject/lib/data/data.json");
  var stringBlog = blogfile.readAsStringSync();
  var blogData = jsonDecode(stringBlog);

  for (var element in blogData["products"]) {
    listBlog.add(Blog.fromJson(element));
  }

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
