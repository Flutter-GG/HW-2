import 'package:flutter/material.dart';
import 'package:flutter_blog_project2/components/appbar_widget.dart';
import 'package:flutter_blog_project2/components/button_widget.dart';
import 'package:flutter_blog_project2/components/textfield_widget.dart';
import 'package:flutter_blog_project2/constants/colors.dart';
import 'package:flutter_blog_project2/constants/spaces.dart';
import 'package:flutter_blog_project2/data_related_files/data_model.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key, required this.post});
  final BlogModel post;

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  TextEditingController titleController = TextEditingController();

  TextEditingController imageController = TextEditingController();

  TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Update Post'),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextfieldWidget(
                  label: 'Title:',
                  controller: titleController,
                  hintText: widget.post.title),
              Spaces.spaceH5,
              TextfieldWidget(
                  label: 'Image:',
                  controller: imageController,
                  hintText: widget.post.image),
              Spaces.spaceH5,
              TextfieldWidget(
                  minlines: 6,
                  label: 'Content:',
                  controller: contentController,
                  hintText: widget.post.content),
              Spaces.spaceH20,
              ButtonWidget(
                  text: 'update Post',
                  buttonAction: () {
                    widget.post.title = titleController.text;
                    widget.post.image = imageController.text;
                    widget.post.content = contentController.text;
                    setState(() {});
                  },
                  buttonColor: AppColors.primary)
            ],
          ),
        ),
      ),
    );
  }
}
