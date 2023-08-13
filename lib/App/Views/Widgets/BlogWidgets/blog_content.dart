import 'package:flutter/material.dart';
import '../../../Models/blog_model.dart';

class BlogContent extends StatelessWidget {
  final Blog blog;

  const BlogContent({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          blog.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(blog.authorAvatar),
              radius: 20,
            ),
            const SizedBox(width: 10),
            Text(blog.authorName),
            const Spacer(),
            Text(blog.date),
            const SizedBox(width: 5),
            Text(blog.readingDuration),
          ],
        ),
        const Divider(),
        Text(blog.summary),
        const SizedBox(height: 10),
        for (var content in blog.content)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                content.keys.first,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                content.values.first,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 10),
            ],
          ),
      ],
    );
  }
}
