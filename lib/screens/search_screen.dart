import 'package:flutter/material.dart';
import 'package:hw2/components/general_components/card_widget.dart';
import 'package:hw2/data/global_data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
          title: const Text("Search page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                // color: Colors.green,
                height: 120,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Enter title",
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)),
                  ),
                  onSubmitted: (value) {
                    titleController.text = value.toLowerCase();
                    setState(() {
                      listSearch.clear();
                    });
                    for (var element in listPosts) {
                      if (element.title!.toLowerCase() .contains(value.toLowerCase())) {
                        setState(() {
                          listSearch.add(element);
                        });
                      }
                    }
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: listSearch.length,
                    itemBuilder: (BuildContext, index) {
                      return CardWidget(
                        post: listSearch[index],
                        index: index,
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
