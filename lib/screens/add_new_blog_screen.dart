import 'package:blog_app/extentions/app_extentions.dart';
import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';
import '../widgets/add_blog_button.dart';
import '../widgets/add_blog_fields.dart';

class AddBlogScreen extends StatefulWidget {
  const AddBlogScreen({super.key});

  @override
  State<AddBlogScreen> createState() => _AddBlogScreenState();
}

class _AddBlogScreenState extends State<AddBlogScreen> {
  // ignore: prefer_final_fields
  TextEditingController titleController = TextEditingController(),
      blogContentController = TextEditingController();

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
            setState(() {});
            context.popNavigator();
          },
        ),
        actions: [
          AddBlogButton(
            titleController: titleController,
            blogContentController: blogContentController,
          )
        ],
      ),
      body: AddBlogFields(
        titleController: titleController,
        blogContentController: blogContentController,
      ),
    );
  }
}
