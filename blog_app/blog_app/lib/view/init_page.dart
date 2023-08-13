import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/view/bookmark_page.dart';
import 'package:blog_app/view/home.dart';
import 'package:blog_app/view/profile_page.dart';
import 'package:blog_app/view/search_page.dart';
import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key, required this.userId});
  final int userId;
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  List screens = [];
  @override
  void initState() {
    screens = [
      const Home(),
      Search(),
      const Bookmark(),
      Profile(
        userId: widget.userId,
      )
    ];
    super.initState();
  }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                ),
                label: "Bookmark"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
                label: "Profile")
          ],
          currentIndex: selectedIndex,
          selectedItemColor: ColorsApp.blueColor,
          backgroundColor: ColorsApp.blueColor,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          }),
    );
  }
}
