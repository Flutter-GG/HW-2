import 'package:flutter/material.dart';
import 'package:project2_flutter_bootcamp/Screens/profile_screen.dart';
import 'package:project2_flutter_bootcamp/Screens/save_screen.dart';
import 'package:project2_flutter_bootcamp/Utils/extensions.dart';
import 'package:project2_flutter_bootcamp/Widgets/card_widget.dart';
import 'package:project2_flutter_bootcamp/main.dart';
import '../Model/blog_data_model.dart';
import '../Widgets/BottomNavigationBarWidget.dart';
import 'home_screen.dart';

List<BlogDataModel> tempProducts = []; 
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreen> {
  BottomNavigationItem _currentNavItem = BottomNavigationItem.Search;

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

  void initState() {
    super.initState();
    tempProducts = listBlog;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
             width: context.getWidth - 50,
             height: context.getHeight - 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.4),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (text) => searchBar(text),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return CardWidget(
                    blogDataModel: tempProducts[index],
                  );
                },
                itemCount: tempProducts.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentNavItem: _currentNavItem,
        onNavItemTapped: _onNavItemTapped,
      ),
    );
  }

  searchBar(String searchText) {
    searchText = searchText.toLowerCase();
    if (searchText.isEmpty) {
      setState(() {
        tempProducts = listBlog;
      });
    } else {
      List<BlogDataModel> filteredProducts = [];
      for (final product in listBlog) {
        if (product.title.toLowerCase().contains(searchText)) {
          filteredProducts.add(product);
        }
      }
      setState(() {
        tempProducts = filteredProducts;
      });
    }
  }
}
