import 'package:flutter/material.dart';
import '../app_style_files/spaces.dart';
import '../data_model/data_model.dart';

//Blog card content widgets
class BlogContentOnCard extends StatefulWidget {
  const BlogContentOnCard({super.key, required this.blogs});

  final Blogs blogs;

  @override
  State<BlogContentOnCard> createState() => _BlogContentOnCardState();
}

class _BlogContentOnCardState extends State<BlogContentOnCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.blogs.title!, //From list //Blog title
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Spaces.spaceH10,
              Text(widget.blogs.date!), //From list //Blog date
            ],
          ),
        ),
        Spaces.spaceW10,
        Image.network(
          widget.blogs.img!, //From list //Blog Img
          width: 112,
          height: 90,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
        ),
      ],
    );
  }
}
