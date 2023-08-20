import 'package:flutter/material.dart';
import 'package:project2_flutter_bootcamp/Screens/save_screen.dart';
import 'package:project2_flutter_bootcamp/Screens/search_screen.dart';
import 'package:project2_flutter_bootcamp/Utils/extensions.dart';
import '../Widgets/BottomNavigationBarWidget.dart';
import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  BottomNavigationItem _currentNavItem = BottomNavigationItem.Profile;

  void _onNavItemTapped(int index) {
    setState(() {
      _currentNavItem = BottomNavigationItem.values[index];
    });

    switch (_currentNavItem) {
      case BottomNavigationItem.Profile:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SearchScreen()),
        );
        break;
      case BottomNavigationItem.Home:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case BottomNavigationItem.Saved:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SaveScreen()),
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
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
              ),
            ),
          ),
          SizedBox(height: 100),
          Container(
            width: context.getWidth - 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "Chance Miller",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: context.getWidth - 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                "example@gmail.com",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentNavItem: _currentNavItem,
        onNavItemTapped: _onNavItemTapped,
      ),
    );
  }
}
