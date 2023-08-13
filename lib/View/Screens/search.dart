import 'package:best_places/View/widget/app_bar.dart';
import 'package:best_places/View/widget/color.dart';
import 'package:best_places/View/widget/search_result.dart';
import 'package:best_places/View/widget/spaces.dart';
import 'package:flutter/material.dart';

List searchList = [];
TextEditingController controllerTitle = TextEditingController();
bool isFound = false;

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar.getAppBar("Search"),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Space.spaceH32,
            TextField(
              onSubmitted: (value) {
                controllerTitle.text == value;
                isFound = true;
                setState(() {});
              },
              controller: controllerTitle,
              decoration: InputDecoration(
                  hintText: "Title",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: btnColor, width: 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: btnColor, width: 3),
                  )),
            ),
            isFound
                ? Column(
                    children: result(),
                  )
                : const SizedBox.shrink()
          ],
        )));
  }
}
