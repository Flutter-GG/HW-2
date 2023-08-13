import 'package:blog_app/App/utilities/extensions/colors.dart';
import 'package:flutter/material.dart';
import '../../Models/blog_model.dart';
import '../Widgets/BlogWidgets/blog_content.dart';

class BlogView extends StatelessWidget {
  final Blog blog;

  const BlogView({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: CustomColor.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: BlogContent(blog: blog),
      ),
    );
  }
}
