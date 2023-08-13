import 'package:bloking_app/main.dart';
import 'package:flutter/material.dart';

import '../model/Card_widget.dart';
import '../model/bloking_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Product>? allItems =
      listProduct; // Your list of items from CRUD operations
  List<Product> filteredItems = [];

  String searchQuery = '';

  void _updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
      filteredItems = allItems!
          .where((item) =>
              item.title.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _updateSearchQuery,
              decoration: const InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return CardWidget(product: filteredItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
