import 'package:flutter/material.dart';
import 'package:flutter_hw2/data/data_model.dart';

class EditPostPage extends StatefulWidget {
  final PostsDataModel post;

  const EditPostPage({super.key, required this.post});

  @override
  State<EditPostPage> createState() => _EditPostPageState();
}

class _EditPostPageState extends State<EditPostPage> {
  late TextEditingController _bodyController;
  late TextEditingController _titleController;

  @override
  void initState() {
    super.initState();

    _bodyController = TextEditingController(text: widget.post.body);
    _titleController = TextEditingController(text: widget.post.title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Post'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                hintText: 'Title',
              ),
            ),
            TextField(
              controller: _bodyController,
              maxLines: 20,
              decoration: const InputDecoration(
                hintText: 'Body',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                widget.post.body = _bodyController.text;
                widget.post.title = _titleController.text;

                Navigator.pop(context, "update");
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
