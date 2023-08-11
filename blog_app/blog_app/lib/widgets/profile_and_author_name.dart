import 'package:blog_app/models/blog_model.dart';
import 'package:blog_app/widgets/image_widget.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProfilePhotoAndAuthorName extends StatelessWidget {
  const ProfilePhotoAndAuthorName({super.key, required this.blog});

  final Blog blog;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ImageWidget(
            path: blog.authorProfilePhoto ?? "not found",
            width: 40,
            height: 40,
            isNetwork: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextWidget(
            data: blog.authorName ?? "not found",
            isBlod: true,
          ),
        )
      ],
    );
  }
}
