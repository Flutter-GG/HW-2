// import 'package:flutter/material.dart';
// import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
// import 'package:flutter_hw2/custom_widgets/custom_bottom_nav_bar.dart';
// import 'package:flutter_hw2/screens/all_posts_screen.dart';
// import 'package:flutter_hw2/screens/login_screen.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         bottomNavigationBar: CustomBottomNavigationBar(),
//         appBar: CustomAppBar(
//           title: 'test',
//         ),
//         body: LoginPage(),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/custom_widgets/custom_bottom_nav_bar.dart';
import 'package:flutter_hw2/screens/all_posts_screen.dart';
import 'package:flutter_hw2/screens/login_screen.dart';
import 'package:flutter_hw2/screens/reading_list_screen.dart';
import 'package:flutter_hw2/screens/searching_posts_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentPageIndex = 0; // Initial page index

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentPageIndex,
          onTap: _onPageChanged,
        ),
        appBar: const CustomAppBar(
          title: 'test',
        ),
        body: _buildCurrentPage(),
      ),
    );
  }

  Widget _buildCurrentPage() {
    switch (_currentPageIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchPostsPage();
      case 2:
        return const ReadingListPage();
      default:
        return const LoginPage();
    }
  }
}
