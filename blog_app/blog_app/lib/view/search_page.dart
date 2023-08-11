import 'package:blog_app/main.dart';
import 'package:blog_app/models/blog_model.dart';
import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/functions/appbar_function.dart';
import 'package:blog_app/widgets/blog_card.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:blog_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController? textSearch = TextEditingController();
  bool isSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarFun(title: 'Search'),
      backgroundColor: ColorsApp.primaryColor,
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFieldWidget(
                textController: textSearch,
                onSubmitted: (value) {
                  textSearch!.text == value;
                  isSubmitted = true;
                  setState(() {});
                },
                hintText: "Search",
                preIcon: const Icon(Icons.search),
              ),
            ),
            // Do not show the list if the user did not submitted the text search
            isSubmitted ? searchResult(textSearch!.text) : Container()
          ],
        ),
      ),
    );
  }

  Widget searchResult(String inputSearch) {
    List<Blog> resultList = [];
    for (var element in blogsList) {
      if (element.blogTitle!.contains(inputSearch)) {
        resultList.add(element);
      }
    }
    if (resultList.isEmpty) {
      return const Center(
        child: TextWidget(data: 'Sorry The Blog You Looking For Is Not Found'),
      );
    } else {
      return SingleChildScrollView(
        child: Column(
          children: resultList.map((e) {
            return BlogCard(blog: e);
          }).toList(),
        ),
      );
    }
  }
}
