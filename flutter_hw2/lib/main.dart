import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
// import 'package:flutter_hw2/custom_widgets/custom_bottom_nav_bar.dart';
// import 'package:flutter_hw2/custom_widgets/custom_container_widget.dart';
import 'package:flutter_hw2/screens/all_posts_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // bottomNavigationBar: CustomBottomNavigationBar(),
        appBar: CustomAppBar(
          title: 'test',
        ),
        body: HomePage(),
      ),
    );
  }
}
