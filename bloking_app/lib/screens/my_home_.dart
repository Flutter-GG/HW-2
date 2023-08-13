import 'package:bloking_app/screens/read_screen.dart';
import 'package:bloking_app/screens/screen_fore.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'search_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => NavigatonBarState();
}

class NavigatonBarState extends State<MyHomePage> {
  final List screens = [
    const HomePage(),
    SearchScreen(),
    ReadScreen(),
    ScreenFore()
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
        // fixedColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.black,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Read',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],

        onTap: (index) {
          selectedIndex = index;

          setState(() {});
        },
      ),
    );
  }
}


 // items: const [
        //   BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,), label: "Home"),
         
        //   BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black), label: "Search"),
          
        //   BottomNavigationBarItem(icon: Icon(Icons.search), label: "Profile"),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.person), label: "Person"),
        // ],
        
        // currentIndex: selectedIndex,
        // selectedItemColor: Colors.white,
        // // backgroundColor: Colors.black,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
       