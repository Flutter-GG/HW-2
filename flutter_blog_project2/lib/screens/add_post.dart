import 'package:flutter/material.dart';
import 'package:flutter_blog_project2/components/appbar_widget.dart';
import 'package:flutter_blog_project2/components/bottom_nav.dart';
import 'package:flutter_blog_project2/components/button_widget.dart';
import 'package:flutter_blog_project2/components/textfield_widget.dart';
import 'package:flutter_blog_project2/constants/colors.dart';
import 'package:flutter_blog_project2/constants/spaces.dart';
import 'package:flutter_blog_project2/data_related_files/data_model.dart';
import 'package:flutter_blog_project2/main.dart';
import 'package:flutter_blog_project2/screens/profile_screen.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  TextEditingController titleController = TextEditingController();

  TextEditingController imageController = TextEditingController();

  TextEditingController contentController = TextEditingController();
  final BlogModel userInfo = getUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Add New Post'),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextfieldWidget(
                  label: 'Title:',
                  controller: titleController,
                  hintText: 'please enter title of your post'),
              Spaces.spaceH5,
              TextfieldWidget(
                  label: 'Image:',
                  controller: imageController,
                  hintText: 'please Enter the image path'),
              Spaces.spaceH5,
              TextfieldWidget(
                  minlines: 6,
                  label: 'Content:',
                  controller: contentController,
                  hintText: 'please Enter content of your post'),
              Spaces.spaceH20,
              ButtonWidget(
                  text: 'Add Post',
                  buttonAction: () {
                    final BlogModel object = BlogModel(
                        postId: 20,
                        title: titleController.text,
                        content: contentController.text,
                        image: imageController.text,
                        date: '13-8-2023',
                        authorName: userInfo.authorName,
                        userId: userId);
                    blogList.add(object);
                    setState(() {});
                  },
                  buttonColor: AppColors.primary)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(index: 1),
    );
  }
}
