import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/reading_list_model.dart';

class ReadingListScreen extends StatefulWidget {
  final ReadingListModel? readingListModel;

  const ReadingListScreen({super.key, this.readingListModel});

  @override
  State<ReadingListScreen> createState() => ReadingListScreenState();
}

class ReadingListScreenState extends State<ReadingListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Readilg List"),
      ),
      body: ListView.builder(
        itemCount: widget.readingListModel!.readingItems.length,
        itemBuilder: (context, index) {
          final post = widget.readingListModel!.readingItems[index];
          return ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(post.profile ?? '',
                  height: 60, width: 60, fit: BoxFit.cover),
            ),
            title: Text(post.title ?? ''),
            onLongPress: () {
              widget.readingListModel!.removeFromReadlist(post);

              setState(() {});

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Removed from Wishlist"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
