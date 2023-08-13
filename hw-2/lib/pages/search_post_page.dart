import 'package:flutter/material.dart';
import 'package:hw_2/main.dart';
import 'package:hw_2/model/bloggerData_class.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/utils/page_size.dart';
import 'package:hw_2/widget/post_card_widget.dart';
import 'package:hw_2/widget/search_box_widget.dart';

List tempProducts = [];

class SearchPostPage extends StatefulWidget {
  const SearchPostPage({super.key});

  @override
  State<SearchPostPage> createState() => _SearchPostPageState();
}

class _SearchPostPageState extends State<SearchPostPage> {
  bool isFound = false;
  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primeryColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: ColorsApp.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SearchBoxWidget(
                  onChanged: (text) => searchBox(text),
                )),
            PageSize.spaceH24,
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return PostCardWidget(
                  listPosts: tempProducts[index],
                );
              },
              itemCount: tempProducts.length,
            ),
          ],
        ),
      ),
    );
  }

  searchBox(String searchText) {
    searchText = searchText.toLowerCase();
    if (searchText.isEmpty) {
      setState(() {
        tempProducts = listPosts;
      });
    } else {
      List<Posts> filteredProducts = [];

      for (final product in listPosts) {
        if (product.title!.toLowerCase().contains(searchText)) {
          filteredProducts.add(product);
        }
      }
      setState(() {
        tempProducts = filteredProducts;
      });
    }
  }
}
