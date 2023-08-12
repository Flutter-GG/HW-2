import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/custom_widgets/custom_border_radius_images.dart';
import 'package:flutter_hw2/custom_widgets/custom_icon_buttons.dart';
import 'package:flutter_hw2/custom_widgets/custom_rounded_images.dart';
import 'package:flutter_hw2/custom_widgets/extensions.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';

class SinglePostPage extends StatefulWidget {
  final PostsDataModel post;

  const SinglePostPage({super.key, required this.post});

  @override
  State<SinglePostPage> createState() => _SinglePostPageState();
}

class _SinglePostPageState extends State<SinglePostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '${widget.post.title}'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomRoundedImages(
                    roundedImage: widget.post.profileImage,
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 25),
                  Column(
                    children: [
                      Text(
                          '${widget.post.userName}\n${widget.post.readingTime} • ${widget.post.date}')
                    ],
                  )
                ],
              ),
              const SizedBox(height: 25),
              Text(
                '${widget.post.body}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              CustomBorderRadiusImages(
                borderRadiusImage: widget.post.postImage,
                height: 250,
                width: context.screenWidth,
              ),
              CustomIconButtons(
                iconButton: widget.post.isBookedmark!
                    ? Icons.bookmark
                    : Icons.bookmark_add_outlined,
                onPressed: _toggleBookmark,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _toggleBookmark() {
    setState(() {
      widget.post.toggleBookmark();
      if (widget.post.isBookedmark!) {
        readingList.add(widget.post);
      } else {
        readingList.remove(widget.post);
      }
    });
  }
}
