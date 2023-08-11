import 'package:flutter/material.dart';
import 'package:myproject/view/home_screen.dart';
import 'package:myproject/view/read_screen.dart';
import 'package:myproject/view/search_screen.dart';

class NavigatonBar extends StatefulWidget {
  const NavigatonBar({
    super.key,
  });

  @override
  State<NavigatonBar> createState() => _NavigatonBarState();
}

class _NavigatonBarState extends State<NavigatonBar> {
  final List screens = [const Home(), const Search(), const Read()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_photo_alternate_sharp), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.grey[200],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
