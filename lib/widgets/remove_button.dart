import 'package:flutter/material.dart';
import '../data_model/data_model.dart';
import '../main.dart';
import '../screens/reading_list_screen.dart';
import 'cards_of_blogs.dart';

//Removing blog button
class RemoveIconButton extends StatefulWidget {
  const RemoveIconButton({
    super.key,
    required this.blogs,
  });

  final Blogs blogs;

  @override
  State<RemoveIconButton> createState() => RemoveIconButtonState();
}

class RemoveIconButtonState extends State<RemoveIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          listOfBlogs.remove(widget.blogs);
          readingList.contains(widget.blogs)
              ? readingList.remove(widget.blogs)
              : null;

          setState(() {});
          context.findAncestorStateOfType<CardsOfBlogsState>()?.setState(() {});
          context
              .findAncestorStateOfType<ReadingListScreenState>()
              ?.setState(() {});
        },
        icon: const Icon(
          Icons.remove_circle_outline,
        ));
  }
}
