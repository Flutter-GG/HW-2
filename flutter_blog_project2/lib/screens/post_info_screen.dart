import 'package:flutter/material.dart';
import 'package:flutter_blog_project2/components/appbar_widget.dart';
import 'package:flutter_blog_project2/components/image_widget.dart';
import 'package:flutter_blog_project2/constants/spaces.dart';
import 'package:flutter_blog_project2/data_related_files/data_model.dart';
import 'package:flutter_blog_project2/extentions/sizes.dart';

class PostInfoScreen extends StatelessWidget {
  const PostInfoScreen({super.key, required this.objectInfo});
  final BlogModel objectInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Post'),
      body: SafeArea(
        minimum: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ImageWidget(
                imgPath: objectInfo.image,
                imgHeight: context.getWidth(),
              ),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: ImageWidget(
                            imgPath: objectInfo.avatarImg,
                          ),
                        ),
                        Spaces.spaceW5,
                        Text(
                            'By ${objectInfo.authorName} Posted in ${objectInfo.date}'),
                      ],
                    ),
                    Spaces.spaceH10,
                    const Divider(color: Colors.grey),
                    SizedBox(
                        child: Text(
                      objectInfo.content,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
