import 'package:blog_app/main.dart';
import 'package:blog_app/screen/home_screen.dart';
import 'package:blog_app/screen/searchpost_screen.dart';
import 'package:blog_app/utilities/ui_classes/appcolor.dart';
import 'package:blog_app/widget/postcard_widget.dart';
import 'package:flutter/material.dart';

class ReadingListScreen extends StatefulWidget {
  const ReadingListScreen({super.key});

  @override
  _ReadingListScreenState createState() => _ReadingListScreenState();
}

class _ReadingListScreenState extends State<ReadingListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        centerTitle: false,
        foregroundColor: Color(0xff424242),
        elevation: 0,
        title: const Text(
          "Reading list",
          style: TextStyle(
            color: Color(0xff424242),
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.file_download_rounded,
                color: Color(0xff424242),
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.ios_share,
                color: Color(0xff424242),
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Color(0xff424242),
              ))
        ],
      ),
      body: ListView.builder(
          itemCount: toreadlistBlog!.length,
          itemBuilder: (context, index) {
            return InkWell(
                onLongPress: () {
                  toreadlistBlog!.remove(toreadlistBlog![index]);
                  setState(() {});
                },
                child: PostCardWidget(blog: toreadlistBlog![index]));
          }),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home_outlined),
              color: Colors.grey,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.grey,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ));
              },
            ),
            IconButton(
              icon: Icon(Icons.bookmarks_sharp),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle_outlined),
              color: Colors.grey,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
