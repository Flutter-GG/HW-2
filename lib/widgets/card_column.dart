import 'package:blog_app/widgets/remove_button.dart';
import 'package:flutter/material.dart';
import '../app_style_files/spaces.dart';
import '../data_model/data_model.dart';
import 'blog_content_on_card.dart';
import 'bookmark_button.dart';
import 'custom_author_icon.dart';
import 'edit_post_button.dart';

//Card sections
class CardColumn extends StatefulWidget {
  const CardColumn({
    super.key,
    required this.blogs,
  });

  final Blogs blogs;

  @override
  State<CardColumn> createState() => _CardColumnState();
}

class _CardColumnState extends State<CardColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //From list //Author Img
            CircularIcon(
              height: MediaQuery.of(context).size.height - 773,
              width: MediaQuery.of(context).size.width - 362,
              url: widget.blogs.userImg!,
              radius: 15,
            ),

            Spaces.spaceW8,

            Text(widget.blogs.author!), // From list //Author Name
          ],
        ),
        Spaces.spaceH10,
        BlogContentOnCard(
          blogs: widget.blogs,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BookmarkIconButton(
              blogs: widget.blogs,
            ),
            RemoveIconButton(
              blogs: widget.blogs,
            ),
            EditIconButton(
              blogs: widget.blogs,
            ),
          ],
        ),
      ],
    );
  }
}
