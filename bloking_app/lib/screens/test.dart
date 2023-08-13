import 'package:bloking_app/main.dart';
import 'package:bloking_app/model/bloking_model.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  final Product? product;

  EditScreen({this.product});

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.product!.title;
    _contentController.text = widget.product!.content;
  }

  void _saveChanges() {
    Product updatedData = Product(
      id: widget.product!.id,
      title: _titleController.text,
      date: widget.product!.date,
      author: widget.product!.author,
      content: _contentController.text,
      image: widget.product!.image,
      subject: widget.product!.subject,
    );

    // Update the data in listBlog
    int index =
        listProduct!.indexWhere((element) => element.id == updatedData.id);
    if (index != -1) {
      listProduct![index] = updatedData;
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
        title: const Text(
          "Edit",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _contentController,
              decoration: const InputDecoration(labelText: 'Content'),
              maxLines: null,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _saveChanges,
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
