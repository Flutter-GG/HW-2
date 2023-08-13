import 'package:blog_app/screens/reading_list_screen.dart';
import 'package:blog_app/screens/search_screen.dart';
import 'package:blog_app/widgets/cards_of_blogs.dart';
import 'package:blog_app/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';
import '../data_model/data_model.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_floating_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.blogs, required this.notifyParent});

  final Blogs? blogs;
  final Function() notifyParent;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  final List<Widget> screens = [
    const CardsOfBlogs(),
    const SearchScreen(),
    const ReadingListScreen(),
    const UserProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      // ignore: prefer_const_constructors
      appBar: currentPageIndex == 0
          ? const PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: CustomAppbar(
                title: "Home",
              ),
            )
          : currentPageIndex == 2
              ? const PreferredSize(
                  preferredSize: Size.fromHeight(60),
                  child: CustomAppbar(
                    title: "Reading List",
                  ),
                )
              : null,

      body: screens[currentPageIndex],

      floatingActionButton:
          currentPageIndex == 0 ? const CustomFloatingButton() : null,

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmarks_sharp),
            label: 'My list',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: currentPageIndex,
        animationDuration: const Duration(milliseconds: 800),
        onDestinationSelected: (int index) {
          //For updating the index of the page
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}
