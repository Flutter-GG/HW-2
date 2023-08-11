import 'package:blog_app/extention/nav.dart';
import 'package:blog_app/extention/size.dart';
import 'package:blog_app/models/blog_model.dart';
import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/ui_classes/spaces.dart';
import 'package:blog_app/widgets/profile_and_author_name.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BlogInfo extends StatelessWidget {
  const BlogInfo({super.key, required this.blog});

  final Blog blog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Image.network(
                  blog.blogImage!,
                  height: context.getHeight() / 3,
                  width: context.getWidth(),
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(35),
                  child: Column(children: [
                    TextWidget(
                      data: blog.blogTitle!,
                      isBlod: true,
                      size: 20,
                    ),
                    Spaces.spacesH8,
                    TextWidget(
                      data: blog.blogDescription!,
                      size: 18,
                    ),
                    Spaces.spacesH16,
                    ProfilePhotoAndAuthorName(blog: blog),
                    Spaces.spacesH16,
                    TextWidget(
                      data: blog.blogContent!,
                      size: 16,
                      maxLines: 500,
                    ),
                  ]),
                ),
              ],
            ),
            Positioned(
              left: 25,
              top: 25,
              child: InkWell(
                onTap: () => context.popNav(),
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorsApp.blueColor,
                      borderRadius: BorderRadius.circular(10)),
                  width: 30,
                  height: 30,
                  child: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
