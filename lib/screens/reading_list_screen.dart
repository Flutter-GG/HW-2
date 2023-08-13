
import 'package:flutter/material.dart';
import 'package:hw2/components/general_components/card_widget.dart';
import 'package:hw2/data/global_data.dart';


class ReadingListScreen extends StatefulWidget {
  const ReadingListScreen({super.key});

  @override
  State<ReadingListScreen> createState() => ReadingListScreenState();
}

class ReadingListScreenState extends State<ReadingListScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Reading List"),
      ),
      body: ListView.builder(
          itemCount: listPosts.length,
          itemBuilder: (BuildContext, index) {
            if (listPosts[index].readingList!) {
              return CardWidget( post: listPosts[index], index: index,);
            }
            return null;
          }),
    );
  }
}
