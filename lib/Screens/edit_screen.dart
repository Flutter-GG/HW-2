import 'package:flutter/material.dart';
import '../Model/blog_data_model.dart';
import '../Widgets/text_field_widget.dart';
import '../main.dart';

class EditScreen extends StatefulWidget {
  final BlogDataModel blogDataModel;

  EditScreen({required this.blogDataModel});

  @override
  EditScreenState createState() => EditScreenState();
}

class EditScreenState extends State<EditScreen> {
  TextEditingController idontroller = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController dateBlogController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController authorImageController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController subjectController = TextEditingController();

  @override
  void initState() {
    super.initState();
    idontroller.text = widget.blogDataModel.id;
    titleController.text = widget.blogDataModel.title;
    dateBlogController.text = widget.blogDataModel.dateBlog;
    authorController.text = widget.blogDataModel.author;
    authorImageController.text = widget.blogDataModel.authorImage;
    contentController.text = widget.blogDataModel.content;
    imageController.text = widget.blogDataModel.image;
    subjectController.text = widget.blogDataModel.subject;
  }

  void _saveChanges() {
    BlogDataModel updatedData = BlogDataModel(
      id: idontroller.text,
      title: titleController.text,
      dateBlog: dateBlogController.text,
      author: authorController.text,
      authorImage: authorImageController.text,
      content: contentController.text,
      image: imageController.text,
      subject: subjectController.text,
    );

    int index = listBlog.indexWhere((element) => element.id == updatedData.id);
    if (index != -1) {
      listBlog[index] = updatedData;
    }

    Navigator.pop(context);

    Navigator.popAndPushNamed(context, '/');
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFieldWidget(
                controller: idontroller,
                hint: "Enter NEW ID ",
                title: "Id",
              ),
              TextFieldWidget(
                controller: titleController,
                hint: "Enter NEW title ",
                title: "title",
              ),
              TextFieldWidget(
                controller: dateBlogController,
                hint: "Enter NEW Date ",
                title: "Date",
              ),
              TextFieldWidget(
                controller: authorController,
                hint: "Enter NEW Author ",
                title: "Author",
              ),
              TextFieldWidget(
                controller: authorImageController,
                hint: "Enter NEW Author Image ",
                title: "Image",
              ),
              TextFieldWidget(
                controller: contentController,
                hint: "Enter NEW content ",
                title: "content",
              ),
              TextFieldWidget(
                controller: imageController,
                hint: "Enter NEW Image ",
                title: "Image",
              ),
              TextFieldWidget(
                controller: subjectController,
                hint: "Enter NEW Subject ",
                title: "Subject",
              ),
              IconButton(
                onPressed: _saveChanges,
                icon: Icon(
                  Icons.save,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
