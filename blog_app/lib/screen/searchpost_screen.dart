import 'package:blog_app/main.dart';
import 'package:blog_app/model/blog.dart';
import 'package:blog_app/screen/readinglist_screen.dart';
import 'package:blog_app/utilities/ui_classes/appcolor.dart';
import 'package:blog_app/widget/postcard_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

TextEditingController? controllerSearched = TextEditingController();
bool isSubmitted = false;

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        centerTitle: false,
        foregroundColor: Color(0xff424242),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        title: const Text(
          "Search",
          style: TextStyle(
            color: Color(0xff424242),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: controllerSearched,
                onSubmitted: (value) {
                  controllerSearched!.text == value;
                  isSubmitted = true;
                  setState(() {});
                },
                decoration: InputDecoration(
                  prefix: const Icon(Icons.search, color: Colors.grey),
                  hintText: "Search",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                  ),
                ),
              ),
            ),
            // Do not show the list if the user did not submitted the text search
            isSubmitted ? searchResult(controllerSearched!.text) : Container()
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home_outlined),
              color: Colors.grey,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
                icon: const Icon(Icons.bookmarks_sharp),
                color: Colors.grey,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReadingListScreen(),
                      ));
                }),
            IconButton(
              icon: const Icon(Icons.account_circle_outlined),
              color: Colors.grey,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

searchResult(String text) {
  List<Blog> resultList = [];
  for (var element in listBlog!) {
    if (element.postTitle!.contains(controllerSearched!.text)) {
      resultList.add(element);
    }
  }
  if (resultList.isEmpty) {
    return const Center(
      child: Text('Sorry The post has not been written yet=('),
    );
  } else {
    return SingleChildScrollView(
      child: Column(
        children: resultList.map((element) {
          return PostCardWidget(blog: element);
        }).toList(),
      ),
    );
  }
}
