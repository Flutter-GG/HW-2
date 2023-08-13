import 'package:blog_app/main.dart';
import 'package:blog_app/widgets/card_widgit.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
  });

  @override
  State<SearchScreen> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Text(
                "Enter blog title",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, left: 20.0, right: 20.0, bottom: 10),
              child: TextField(
                onSubmitted: (value) {
                  titleController.text = value;
                  setState(() {});
                },
                controller: titleController,
                maxLines: 1,
                decoration: const InputDecoration(
                    hintText: "Enter the title of your blog",
                    border: OutlineInputBorder()),
              ),
            ),
            Column(
              children: searchResult(),
            ),
          ],
        ),
      ),
    );
  }

  searchResult() {
    List<Widget> searchList = [];
    for (var element in listOfBlogs) {
      if (element.title!
              .toLowerCase()
              .contains(titleController.text.toLowerCase()) &&
          titleController.text.isNotEmpty) {
        searchList.add(CardWidgit(
          blogs: element,
        ));
      }
    }
    return searchList;
  }
}
