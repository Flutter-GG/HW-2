import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/model/my_model.dart';
import 'package:myproject/widget/card_user.dart';

class Search extends StatefulWidget {
  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controller = TextEditingController();
  List<Blog> listBlog = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "search",
              ),
              onChanged: searchblog,
            ),
          ),
        ),
      ),
      body: Expanded(
          child: ListView.builder(
              itemCount: listBlog.length,
              itemBuilder: (context, index) {
                final book = Carduser(
                  blog: listBlog[index],
                );
                return ListTile(
                  leading: Image.network(
                    book.blog.image,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(book.blog.title),
                );
              })),
    );
  }

  void searchblog(String query) {
    final suggestion = listBlog.where((book) {
      final blogtitle = book.title.toLowerCase();

      return blogtitle.contains(blogtitle);
    }).toList();
    setState(() => listBlog = suggestion);
  }
}
