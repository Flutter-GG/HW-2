import 'package:blog_app/main.dart';
import 'package:blog_app/screen/addpost_screen.dart';
import 'package:blog_app/screen/readinglist_screen.dart';
import 'package:blog_app/screen/searchpost_screen.dart';
import 'package:blog_app/utilities/ui_classes/appcolor.dart';
import 'package:blog_app/widget/postcard_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: const Text(
          "Home",
          style: TextStyle(
            color: Color(0xff424242),
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Color(0xff424242),
              ))
        ],
      ),
      body: ListView.builder(
          itemCount: listBlog!.length,
          itemBuilder: (context, index) {
            return InkWell(
                onLongPress: () {
                  listBlog!.remove(listBlog![index]);
                  setState(() {});
                },
                child: PostCardWidget(blog: listBlog![index]));
          }),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home_outlined),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.grey,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ));
              },
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.greenColor,
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddPostScreen()))
              .then((value) => {
                    if (value == "i'm here") {setState(() {})}
                  });
        },
        child: const Text("+", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
