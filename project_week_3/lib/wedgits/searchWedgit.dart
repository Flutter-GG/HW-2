import 'package:flutter/material.dart';
import 'package:project_week_3/main.dart';
import 'package:project_week_3/wedgits/bottomWedgit.dart';
import 'package:project_week_3/wedgits/cardWedgit.dart';
import '../units/ui_classes/colors.dart';

class Searchwedgit extends StatefulWidget {
  const Searchwedgit({super.key});

  @override
  State<Searchwedgit> createState() => _Searchwedgit();
}

class _Searchwedgit extends State<Searchwedgit> {
  bool isFound = false;
  TextEditingController titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Page"),
        backgroundColor: ColorsApp.purpleColor,
      ),
      //bottomList//
      bottomNavigationBar: const BottomWedgit(),
      //body//
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: 250,
                child: TextField(
                  onSubmitted: (value) {
                    titleController.text == value;
                    isFound = true;
                    setState(() {});
                  },
                  controller: titleController,
                  decoration: InputDecoration(
                      hintText: "Search",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: ColorsApp.whiteColor, width: 44)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: ColorsApp.whiteColor, width: 44))),
                ),
              ),
            ),
            isFound
                ? Column(
                    children: resultcard(),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }

  resultcard() {
    List<Widget> results = [];
    for (var element in ListBlogs!) {
      if (element.postTitle.contains(titleController.text)) {
        results.add(CardWidget(
          blog: element,
        ));
      }
    }
    return results;
  }
}
