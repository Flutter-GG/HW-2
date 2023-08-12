import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  String _postTitle = '';
  String _postBody = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Adding post'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onSubmitted: (value) {
                  setState(() {
                    _postTitle = value;
                  });
                },
                decoration: const InputDecoration(hintText: 'Post Title'),
              ),
              const SizedBox(height: 20),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _postBody = value;
                  });
                },
                decoration: const InputDecoration(hintText: 'Post Body'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _addPost();
                },
                child: const Text('Add Post'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addPost() {
    if (_postTitle.isNotEmpty && _postBody.isNotEmpty) {
      PostsDataModel newPost = PostsDataModel(
        id: postsList.length + 1,
        title: _postTitle,
        body: _postBody,
        userName: 'Your Username',
        usedId: 2,
        date: '13-13-2013',
        isBookedmark: false,
        reactions: 9,
        readingTime: '5 min',
      );

      setState(() {
        postsList.add(newPost);
        _postTitle = '';
        _postBody = '';
      });
    }
    Navigator.pop(context);
  }
}
