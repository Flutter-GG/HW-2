import 'package:flutter/material.dart';

enum BottomNavigationItem {
  Home,
  Search,
  Saved,
  Profile,
}

class BottomNavigationBarWidget extends StatefulWidget {
  final BottomNavigationItem currentNavItem;
  final Function(int) onNavItemTapped;

  const BottomNavigationBarWidget({
    required this.currentNavItem,
    required this.onNavItemTapped,
  });

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: widget.currentNavItem.index,
      onTap: widget.onNavItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
