import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/custom_widgets/custom_border_radius_images.dart';
import 'package:flutter_hw2/custom_widgets/custom_rounded_images.dart';
import 'package:flutter_hw2/custom_widgets/extensions.dart';
import 'package:flutter_hw2/data/data_model.dart';

class SinglePostPage extends StatelessWidget {
  final PostsDataModel post;

  const SinglePostPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '${post.title}'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomRoundedImages(
                    roundedImage: post.profileImage,
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 25),
                  Column(
                    children: [
                      Text(
                          '${post.userName}\n${post.readingTime} • ${post.date}')
                    ],
                  )
                ],
              ),
              const SizedBox(height: 25),
              Text(
                '${post.body}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              CustomBorderRadiusImages(
                borderRadiusImage: post.postImage,
                height: 250,
                width: context.screenWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
