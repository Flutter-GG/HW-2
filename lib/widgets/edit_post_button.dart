import 'package:blog_app/extentions/app_extentions.dart';
import 'package:flutter/material.dart';

import '../data_model/data_model.dart';
import '../screens/modify_blog_screen.dart';
import 'cards_of_blogs.dart';

//Editing blog icon
class EditIconButton extends StatefulWidget {
  const EditIconButton({
    super.key,
    required this.blogs,
  });

  final Blogs blogs;

  @override
  State<EditIconButton> createState() => _EditIconButtonState();
}

class _EditIconButtonState extends State<EditIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await context.pushNavigator(
            screen: ModifyBlogScreen(
                blogs: widget.blogs,
        ));
        setState(() {});
        context.findAncestorStateOfType<CardsOfBlogsState>()?.setState(() {});
      },
      icon: const Icon(
        Icons.edit,
      ),
    );
  }
}
