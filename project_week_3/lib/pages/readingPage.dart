import 'package:flutter/material.dart';
import 'package:project_week_3/models/blogModel.dart';
import 'package:project_week_3/wedgits/bottomWedgit.dart';
import 'package:project_week_3/wedgits/cardWedgit.dart';
import '../units/ui_classes/colors.dart';

List<BlogModel>? readingList = [];

class ReadingPage extends StatefulWidget {
  const ReadingPage({super.key});

  @override
  State<ReadingPage> createState() => ReadingPageState();
}

class ReadingPageState extends State<ReadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.purpleColor,
      appBar: AppBar(
        title: const Text("Reading Page"),
        backgroundColor: ColorsApp.purpleColor,
      ),
      //bottomWedgit
      bottomNavigationBar: const BottomWedgit(),
      //body
      body: ListView.builder(
          itemCount: readingList!.length,
          itemBuilder: (context, index) {
            return InkWell(
                onLongPress: () {
                  readingList!.removeAt(index);
                  setState(() {});
                  context
                      .findAncestorStateOfType<ReadingPageState>()
                      ?.setState(() {});
                },
                child: CardWidget(
                  blog: readingList![index],
                ));
          }),
    );
  }
}
