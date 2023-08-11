import 'package:blog_app/models/blog_model.dart';
import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/ui_classes/spaces.dart';
import 'package:blog_app/widgets/profile_and_author_name.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EditBlog extends StatefulWidget {
  const EditBlog({super.key, required this.blog});
  final Blog blog;

  @override
  State<EditBlog> createState() => _EditBlogState();
}

bool isEditingTitle = false;
bool isEditingDescription = false;
bool isEditingContent = false;
TextEditingController? editingTitleController;
TextEditingController? editingDescriptionController;
TextEditingController? editingContentController;

class _EditBlogState extends State<EditBlog> {
  @override
  void initState() {
    editingTitleController = TextEditingController(text: widget.blog.blogTitle);
    editingDescriptionController =
        TextEditingController(text: widget.blog.blogDescription);
    editingContentController =
        TextEditingController(text: widget.blog.blogContent);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          data: 'Edit Blog',
          isBlod: true,
          size: 22,
        ),
        elevation: 0,
        backgroundColor: ColorsApp.primaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context, "update");
          },
        ),
      ),
      backgroundColor: ColorsApp.primaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: TextWidget(
                data: 'Click on the text to edit it:',
                size: 20,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    editTitle(),
                    Spaces.spacesH8,
                    editDescription(),
                    Spaces.spacesH16,
                    ProfilePhotoAndAuthorName(blog: widget.blog),
                    editContent(),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  /// change isEditingTitle to true if the user click on the text to conver it to text field
  Widget editTitle() {
    if (isEditingTitle) {
      return TextField(
        onSubmitted: (newValue) {
          setState(() {
            widget.blog.blogTitle = newValue;
            isEditingTitle = false;
          });
        },
        controller: editingTitleController,
      );
    }
    return InkWell(
      onTap: () {
        setState(() {
          isEditingTitle = true;
        });
      },
      child: TextWidget(
        data: widget.blog.blogTitle!,
        isBlod: true,
        size: 20,
      ),
    );
  }

  Widget editDescription() {
    if (isEditingDescription) {
      return TextField(
        onSubmitted: (newValue) {
          setState(() {
            widget.blog.blogDescription = newValue;
            isEditingDescription = false;
          });
        },
        controller: editingDescriptionController,
      );
    }
    return InkWell(
      onTap: () {
        setState(() {
          isEditingDescription = true;
        });
      },
      child: TextWidget(
        data: widget.blog.blogDescription!,
        size: 18,
      ),
    );
  }

  Widget editContent() {
    if (isEditingContent) {
      return TextField(
        maxLines: 10,
        onSubmitted: (newValue) {
          setState(() {
            widget.blog.blogContent = newValue;
            isEditingContent = false;
          });
        },
        controller: editingContentController,
      );
    }
    return InkWell(
      onTap: () {
        setState(() {
          isEditingContent = true;
        });
      },
      child: TextWidget(
        data: widget.blog.blogContent!,
        size: 16,
        maxLines: 500,
      ),
    );
  }
}
