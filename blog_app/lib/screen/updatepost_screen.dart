import 'package:blog_app/model/blog.dart';
import 'package:blog_app/widget/updatepost_widget.dart';
import 'package:flutter/material.dart';

class UpdatePostScreen extends StatefulWidget {
  const UpdatePostScreen({super.key, required this.blog});
  final Blog blog;
  @override
  _UpdatePostScreenState createState() => _UpdatePostScreenState();
}

class _UpdatePostScreenState extends State<UpdatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: UpdatePostWidget(blog: widget.blog));
  }
}
