import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myproject/model/my_model.dart';
import 'package:myproject/view/add_screen.dart';
import 'package:myproject/view/home_screen.dart';
import 'package:myproject/view/navigations_home.dart';

List<Blog> listBlog = [];

void main() {
  File blogfile =
      File("/Users/mrzogymagbool/Desktop/HW-2/myproject/lib/data/data.json");
  var stringBlog = blogfile.readAsStringSync();
  var blogData = json.decode(stringBlog);

  for (var element in blogData["products"]) {
    listBlog.add(Blog.fromJson(element));
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigatonBar());
  }
}
