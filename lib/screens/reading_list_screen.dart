import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/card_widgit.dart';

class ReadingListScreen extends StatefulWidget {
  const ReadingListScreen({super.key});

  @override
  State<ReadingListScreen> createState() => ReadingListScreenState();
}

class ReadingListScreenState extends State<ReadingListScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: readingList.length,
      itemBuilder: ((context, index) {
        return CardWidgit(
          blogs: readingList[index],
        );
      }),
    );
  }
}
