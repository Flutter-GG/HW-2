import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/model/my_model.dart';

class EditScreen extends StatefulWidget {
  final Blog blogDataModel;

  EditScreen({required this.blogDataModel});

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController.text = widget.blogDataModel.title;
    contentController.text = widget.blogDataModel.content;
  }

  void _saveChanges() {
    Blog updatedData = Blog(
        id: widget.blogDataModel.id,
        title: titleController.text,
        author: widget.blogDataModel.author,
        content: contentController.text,
        image: widget.blogDataModel.image,
        subject: widget.blogDataModel.subject,
        min: widget.blogDataModel.min);

    // Update the data in listBlog
    int index = listBlog.indexWhere((element) => element.id == updatedData.id);
    if (index != -1) {
      listBlog[index] = updatedData;
    }

    // Close the edit screen
    Navigator.pop(context);

    // Trigger a rebuild of the previous screen
    Navigator.popAndPushNamed(context, '/'); // Replace '/' with your route
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              SizedBox(height: 16),
              TextField(
                controller: contentController,
                decoration: InputDecoration(labelText: 'Content'),
                maxLines: null,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _saveChanges,
                child: Text('Save Changes'),
              ),
            ],
          ),
        ));
  }
}
