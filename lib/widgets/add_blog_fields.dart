import 'package:flutter/material.dart';
import '../app_style_files/spaces.dart';

//Fields widget for adding new blog

// ignore: must_be_immutable
class AddBlogFields extends StatefulWidget {
  const AddBlogFields(
      {super.key,
      required this.titleController,
      required this.blogContentController});

  // ignore: prefer_final_fields
  final TextEditingController titleController;
  final TextEditingController blogContentController;

  @override
  State<AddBlogFields> createState() => _AddBlogFieldsState();
}

class _AddBlogFieldsState extends State<AddBlogFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Blog title feild
            const Text(
              "Blog Title",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: widget.titleController,
              maxLines: 1,
              decoration: const InputDecoration(
                  hintText: "Enter the title of your blog",
                  border: OutlineInputBorder()),
            ),

            Spaces.spaceH25,

            //Blog content field
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
                controller: widget.blogContentController,
                keyboardType: TextInputType.multiline,
                maxLines: 25,
                decoration: const InputDecoration(
                    hintText: "Enter your blog content",
                    border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
