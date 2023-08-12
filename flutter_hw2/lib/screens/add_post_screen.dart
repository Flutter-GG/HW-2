import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';

/* this is for adding new post, add title and post body only, the user id will be the userId 2 for current setuation */

class AddPostPage extends StatefulWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  TextEditingController? _postTitleController;
  TextEditingController? _postBodyController;

  @override
  void initState() {
    super.initState();
    _postTitleController = TextEditingController();
    _postBodyController = TextEditingController();
  }

  @override
  void dispose() {
    _postTitleController!.dispose();
    _postBodyController!.dispose();
    super.dispose();
  }

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
                controller: _postTitleController,
                decoration: const InputDecoration(hintText: 'Post Title'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _postBodyController,
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
    final String postTitle = _postTitleController!.text;
    final String postBody = _postBodyController!.text;
    const int userId = 2;

    if (postTitle.isNotEmpty && postBody.isNotEmpty) {
      PostsDataModel newPost = PostsDataModel(
          id: postsList.length + 1,
          title: postTitle,
          body: postBody,
          userName: 'dreams',
          usedId: userId,
          date: '13-13-2013',
          isBookedmark: false,
          reactions: 9,
          readingTime: '5 min',
          profileImage:
              'https://th.bing.com/th/id/OIP.yqgrW7qSDXZgjULh3iuuGgHaHa?pid=ImgDet&rs=1',
          postImage:
              'https://th.bing.com/th/id/OIP.yqgrW7qSDXZgjULh3iuuGgHaHa?pid=ImgDet&rs=1');

      setState(() {
        postsList.add(newPost);
      });
    }
    Navigator.pop(context);
  }
}
