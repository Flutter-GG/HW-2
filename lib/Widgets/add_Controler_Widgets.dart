import 'package:flutter/material.dart';
import 'package:project2_flutter_bootcamp/Widgets/text_field_widget.dart';

import '../Model/blog_data_model.dart';
import '../main.dart';

class add_Controler_Widgets extends StatelessWidget {
  final TextEditingController controlleradd;
  final TextEditingController controllertitle;
  final TextEditingController controllerdate;
  final TextEditingController controllerauthor;
  final TextEditingController controllerauthorImage;
  final TextEditingController controllercontent;
  final TextEditingController controllerimage;
  final TextEditingController controllersubject;

  add_Controler_Widgets({
    Key? key,
    required this.controlleradd,
    required this.controllertitle,
    required this.controllerdate,
    required this.controllerauthor,
    required this.controllerauthorImage,
    required this.controllercontent,
    required this.controllerimage,
    required this.controllersubject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFieldWidget(
            controller: controlleradd,
            hint: "Enter NEW ID ",
            title: "Id",
          ),
          TextFieldWidget(
            controller: controllertitle,
            hint: "Enter NEW title ",
            title: "title",
          ),
          TextFieldWidget(
            controller: controllerdate,
            hint: "Enter NEW Date ",
            title: "Date",
          ),
          TextFieldWidget(
            controller: controllerauthor,
            hint: "Enter NEW Author ",
            title: "Author",
          ),
          TextFieldWidget(
            controller: controllerauthorImage,
            hint: "Enter NEW Author Image ",
            title: "Image",
          ),
          TextFieldWidget(
            controller: controllercontent,
            hint: "Enter NEW content ",
            title: "content",
          ),
          TextFieldWidget(
            controller: controllerimage,
            hint: "Enter NEW Image ",
            title: "Image",
          ),
          TextFieldWidget(
            controller: controllersubject,
            hint: "Enter NEW Subject ",
            title: "Subject",
          ),
          IconButton(
            onPressed: () {
              final blogOb = BlogDataModel(
                id: controlleradd.text,
                title: controllertitle.text,
                dateBlog: controllerdate.text,
                author: controllerauthor.text,
                authorImage: controllerauthorImage.text,
                content: controllercontent.text,
                image: controllerimage.text,
                subject: controllersubject.text,
              );
              listBlog.add(blogOb);
              Navigator.pop(context, "back");
            },
            icon: Icon(
              Icons.save,
              size: 40,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
