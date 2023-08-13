import 'package:flutter/material.dart';
import 'package:hw_2/pages/Reading_list_pages.dart';
import 'package:hw_2/pages/profile_page.dart';
import 'package:hw_2/pages/search_post_page.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/widget/add_post_button_widget.dart';
import 'package:hw_2/widget/appBar_widget.dart';
import 'package:hw_2/widget/navigation_destination_widget.dart';
import 'package:hw_2/widget/post_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  
  int index = 0;

  final List pages = [
    const PostWidget(),
    const SearchPostPage(),
    const ReadingListPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const AppBarWidget(title: "", icon: Icons.notifications_on_outlined),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const AddPostButtonWidget(),
      backgroundColor: ColorsApp.primeryColor,
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        height: 60,
        destinations: const [
          NavigationDestinationWidget(
              icon: Icons.home_outlined,
              selectedIcon: Icons.home,
              label: "Home"),
          NavigationDestinationWidget(
              icon: Icons.search_outlined,
              selectedIcon: Icons.search,
              label: "Search"),
          NavigationDestinationWidget(
              icon: Icons.bookmark_outline,
              selectedIcon: Icons.bookmark,
              label: "Reading List"),
          NavigationDestinationWidget(
              icon: Icons.person_outlined,
              selectedIcon: Icons.person,
              label: " Profile Page"),
        ], // isBookmark
      ),
    );
  }
}
