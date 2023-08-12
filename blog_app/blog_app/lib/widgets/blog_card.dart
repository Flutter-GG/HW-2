import 'package:blog_app/extention/nav.dart';
import 'package:blog_app/extention/size.dart';
import 'package:blog_app/main.dart';
import 'package:blog_app/models/blog_model.dart';
import 'package:blog_app/ui_classes/spaces.dart';
import 'package:blog_app/view/blog_page.dart';
import 'package:blog_app/functions/border_radius_function.dart';
import 'package:blog_app/widgets/image_widget.dart';
import 'package:blog_app/widgets/profile_and_author_name.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatefulWidget {
  const BlogCard({super.key, required this.blog});

  final Blog blog;

  @override
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNav(
          screen: BlogInfo(
        blog: widget.blog,
      )),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: context.getWidth() - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    data: widget.blog.blogTitle!,
                    isBlod: true,
                    size: 17,
                  ),
                  Spaces.spacesH8,
                  TextWidget(
                    data: widget.blog.blogDescription ?? '',
                    textColor: Colors.black38,
                    size: 15,
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: borderFun(),
                  child: ImageWidget(
                    path: widget.blog.blogImage!,
                    isNetwork: true,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: context.getWidth() - 80,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: borderFun(),
                      ),
                      child: ProfilePhotoAndAuthorName(blog: widget.blog)),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: IconButton(
                    onPressed: () {
                      widget.blog.bookmark = !widget.blog.bookmark!;
                      if (widget.blog.bookmark!) {
                        bookmarkList.add(widget.blog);
                        setState(() {});
                      } else {
                        bookmarkList.remove(widget.blog);
                        setState(() {});
                      }
                    },
                    icon: Icon(widget.blog.bookmark!
                        ? Icons.bookmark
                        : Icons.bookmark_border),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
