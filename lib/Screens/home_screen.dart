import 'package:flutter/material.dart';
import 'package:project2_flutter_bootcamp/Screens/add_screen.dart';
import 'package:project2_flutter_bootcamp/Screens/profile_screen.dart';
import 'package:project2_flutter_bootcamp/Screens/save_screen.dart';
import 'package:project2_flutter_bootcamp/main.dart';

import '../Widgets/BottomNavigationBarWidget.dart';
import '../Widgets/card_widget.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BottomNavigationItem _currentNavItem = BottomNavigationItem.Home;

  void _onNavItemTapped(int index) {
    setState(() {
      _currentNavItem = BottomNavigationItem.values[index];
    });

    switch (_currentNavItem) {
      case BottomNavigationItem.Saved:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SaveScreen()),
        );
        break;
      case BottomNavigationItem.Search:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SearchScreen()),
        );
        break;
      case BottomNavigationItem.Profile:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddScreen()),
              );

              if (result == "back") {
                setState(() {}); 
              }
            },
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listBlog?.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: CardWidget(blogDataModel: listBlog![index]),
            onLongPress: () {
              listBlog.removeAt(index);
              setState(() {});
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentNavItem: _currentNavItem,
        onNavItemTapped: _onNavItemTapped,
      ),
    );
  }
}
