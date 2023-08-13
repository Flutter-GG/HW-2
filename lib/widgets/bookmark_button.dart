import 'package:flutter/material.dart';
import '../data_model/data_model.dart';
import '../main.dart';
import '../screens/reading_list_screen.dart';

//Bookmark button "on click" state
class BookmarkIconButton extends StatefulWidget {
  const BookmarkIconButton({
    super.key,
    required this.blogs,
  });

  final Blogs blogs;

  @override
  State<BookmarkIconButton> createState() => _BookmarkIconButtonState();
}

class _BookmarkIconButtonState extends State<BookmarkIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          //remove blog from reading list if its exist otherwise add it to the list
          !readingList.contains(widget.blogs)
              ? readingList.add(widget.blogs)
              : readingList.remove(widget.blogs);
          setState(() {});
          context
              .findAncestorStateOfType<ReadingListScreenState>()
              ?.setState(() {});
        },

        // Change the icon depending on reading list content
        icon: readingList.contains(widget.blogs)
            ? const Icon(
                Icons.bookmark,
              )
            : const Icon(
                Icons.bookmark_add_outlined,
              ));
  }
}
