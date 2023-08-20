import 'package:flutter/material.dart';
import 'package:project2_flutter_bootcamp/Screens/home_screen.dart';
import 'package:project2_flutter_bootcamp/Screens/profile_screen.dart';
import 'package:project2_flutter_bootcamp/Screens/search_screen.dart';
import '../Widgets/BottomNavigationBarWidget.dart';
import '../Widgets/card_widget.dart';
import '../main.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({Key? key}) : super(key: key);

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  BottomNavigationItem _currentNavItem = BottomNavigationItem.Saved;

  void _onNavItemTapped(int index) {
    setState(() {
      _currentNavItem = BottomNavigationItem.values[index];
    });
    switch (_currentNavItem) {
      case BottomNavigationItem.Search:
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
          "Saved",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentNavItem: _currentNavItem,
        onNavItemTapped: _onNavItemTapped,
      ),
      body: ListView.builder(
        itemCount: listBlogSave?.length,
        itemBuilder: (context, index) {
          return InkWell(
            child:
                CardWidget(blogDataModel: listBlogSave![index], isSaved: true),
            onLongPress: () {
              setState(() {
                listBlogSave?.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }
}
