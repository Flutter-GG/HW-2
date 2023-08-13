import 'package:blog_app/App/utilities/extensions/colors.dart';
import 'package:flutter/material.dart';

import '../Widgets/BlogWidgets/blog_card.dart';

import '../../Models/blog_model.dart';

class BlogView extends StatelessWidget {
  final Blog blog;

  const BlogView({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blog.title),
        backgroundColor: CustomColor.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: BlogCard(blog: blog),
      ),
    );
  }
}
