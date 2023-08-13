import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Models/blog_model.dart';
import '../../ViewModels/blog_viewmodel.dart';
import '../../ViewModels/signup_viewmodel.dart';
import '../../utilities/user_state.dart';

class WriteArticleView extends StatefulWidget {
  const WriteArticleView({Key? key}) : super(key: key);

  @override
  State<WriteArticleView> createState() => _WriteArticleViewState();
}

class _WriteArticleViewState extends State<WriteArticleView> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _authorNameController = TextEditingController();
  final _summaryController = TextEditingController();
  final _contentTitleControllers = <TextEditingController>[];
  final _contentBodyControllers = <TextEditingController>[];
  final _categoryController = TextEditingController();
  final _readingDurationController = TextEditingController();
  final userViewModel = UserViewModel();

  @override
  void dispose() {
    _titleController.dispose();
    _authorNameController.dispose();
    _summaryController.dispose();
    for (final controller in _contentTitleControllers) {
      controller.dispose();
    }
    for (final controller in _contentBodyControllers) {
      controller.dispose();
    }
    _categoryController.dispose();
    _readingDurationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: "Title"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a title.";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _authorNameController,
                decoration: const InputDecoration(labelText: "Author Name"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an author name.";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _summaryController,
                decoration: const InputDecoration(labelText: "Summary"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a summary.";
                  }
                  return null;
                },
              ),
              // Add other TextFormField fields...
              ElevatedButton(
                onPressed: () {
                  _submitBlog(context);
                },
                child: const Text("Add Blog"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitBlog(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final viewModel = Provider.of<BlogViewModel>(context, listen: false);
      final currentUser =
          Provider.of<UserState>(context, listen: false).currentUser;

      if (currentUser != null) {
        List<Map<String, String>> contentSections = [];
        for (int i = 0; i < _contentTitleControllers.length; i++) {
          contentSections.add({
            "title": _contentTitleControllers[i].text,
            "content": _contentBodyControllers[i].text,
          });
        }

        Blog newBlog = Blog(
          title: _titleController.text,
          authorName: _authorNameController.text,
          authorAvatar: currentUser.profileImagePath,
          summary: _summaryController.text,
          content: contentSections,
          date: DateTime.now().toIso8601String(),
          writerUserId: currentUser.userId,
          category: _categoryController.text,
          readingDuration: _readingDurationController.text,
        );

        viewModel.addBlog(currentUser, newBlog);

        Navigator.pop(context);
      }
    }
  }
}
