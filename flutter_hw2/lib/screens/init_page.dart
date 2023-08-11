import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_bottom_nav_bar.dart';
import 'package:flutter_hw2/screens/add_post_screen.dart';
import 'package:flutter_hw2/screens/all_posts_screen.dart';
import 'package:flutter_hw2/screens/login_screen.dart';
import 'package:flutter_hw2/screens/profile_screen.dart';
import 'package:flutter_hw2/screens/reading_list_screen.dart';
import 'package:flutter_hw2/screens/searching_posts_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageContent(),
    );
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  int _currentPageIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddPostPage()),
            );
          },
          child: const Icon(Icons.add)),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: _onPageChanged,
      ),
      body: _buildCurrentPage(),
    );
  }

  Widget _buildCurrentPage() {
    switch (_currentPageIndex) {
      case 0:
        return const AllPostsPage();
      case 1:
        return const SearchPostsPage();
      case 2:
        return const ReadingListPage();
      case 3:
        return const ProfilePosts();
      default:
        return const LoginPage();
    }
  }
}
