import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/users_models.dart';
import 'package:flutter_application_1/ui_class/colors_app.dart';
import 'package:flutter_application_1/widgets/post_view_widget.dart';
import 'package:flutter_application_1/widgets/text_feld_widget.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

  
class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

TextEditingController? textSearchController;

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    textSearchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textSearchController!.dispose();
    super.dispose();
  }

  bool isSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFieldWidget(
                textController: textSearchController,
                onSubmitted: (value) {
                  textSearchController!.text == value;
                  isSubmitted = true;
                  setState(() {});
                },
                hintText: "Search",
              ),
            ),
            // Do not show the list if the user did not submitted the text search
            isSubmitted ? searchResult(textSearchController!.text) : Container()
          ],
        ),
      ),
    );
  }

  Widget searchResult(String inputSearch) {
    List<UsersModel> resultList = [];
    for (var element in listUsers) {
      if (element.title!.contains(inputSearch)) {
        resultList.add(element);
      }
    }
    if (resultList.isEmpty) {
      return const Center(
        child: TextWidget(text: 'Not Found'),
      );
    } else {
      return SingleChildScrollView(
        child: Column(
          children: resultList.map((e) {
            return PostViewWidget(post: e);
          }).toList(),
        ),
      );
    }
  }
}
