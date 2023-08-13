import 'package:flutter/material.dart';
import 'package:hw2/components/general_components/nav_bar.dart';
import 'package:hw2/screens/posts_screen.dart';
import 'package:hw2/screens/profile_screen.dart';
import 'package:hw2/screens/reading_list_screen.dart';
import 'package:hw2/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const NavBarWidget(),
      body: <Widget>[
        const PostsScreen(),
        const ReadingListScreen(),
        const SearchScreen(),
        const ProfileScreen(),
      ][selectedIndex],
    );
  }
}