import 'package:blog_app/extentions/app_extentions.dart';
import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';
import '../data_model/data_model.dart';

class UpdateBlogButton extends StatelessWidget {
  const UpdateBlogButton(
      {super.key,
      required this.titleController,
      required this.blogContentController,
      required this.blogs});

  final TextEditingController titleController;
  final TextEditingController blogContentController;
  final Blogs blogs;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightGrey,
      ),
      onPressed: () {
        if (titleController.text.trim().isNotEmpty &&
            blogContentController.text.trim().isNotEmpty) {
          blogs.title = titleController.text;
          blogs.content = blogContentController.text;
        }
        context.popNavigator();
      },
      child: Text(
        "Update",
        style: TextStyle(fontSize: 17, color: AppColors.blue),
      ),
    );
  }
}
