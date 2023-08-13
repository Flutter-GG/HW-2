import 'package:blog_app/app_style_files/spaces.dart';
import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';
import '../data_model/data_model.dart';
import '../widgets/update_blog_button.dart';

// ignore: must_be_immutable
class ModifyBlogScreen extends StatefulWidget {
  const ModifyBlogScreen({super.key, required this.blogs});

  final Blogs blogs;

  @override
  State<ModifyBlogScreen> createState() => _ModifyBlogScreenState();
}

class _ModifyBlogScreenState extends State<ModifyBlogScreen> {
  // ignore: prefer_final_fields
  late TextEditingController _titleController =
          TextEditingController(text: widget.blogs.title),
      // ignore: prefer_final_fields
      _blogContentController =
          TextEditingController(text: widget.blogs.content),
      // ignore: prefer_final_fields
      _summaryController = TextEditingController(text: widget.blogs.summary);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.cancel,
            color: AppColors.grey,
          ),
          onPressed: () {
            Navigator.pop(context); //pop if the cancel button clicked
          },
        ),
        actions: [
          UpdateBlogButton(
            titleController: _titleController,
            blogContentController: _blogContentController,
            blogs: widget.blogs,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Blog Title",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: _titleController,
                maxLines: 1,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              Spaces.spaceH25,
              const Text(
                "Summary",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: _summaryController,
                maxLines: 5,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              Spaces.spaceH25,
              const Text(
                "Content",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: TextField(
                  controller: _blogContentController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 25,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
