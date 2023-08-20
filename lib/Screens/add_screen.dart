import 'package:flutter/material.dart';

import '../Widgets/add_Controler_Widgets.dart';


class AddScreen extends StatelessWidget {
  final TextEditingController controlleradd = TextEditingController();
  final TextEditingController controllertitle = TextEditingController();
  final TextEditingController controllerdate = TextEditingController();
  final TextEditingController controllerauthor = TextEditingController();
  final TextEditingController controllerauthorImage = TextEditingController();
  final TextEditingController controllercontent = TextEditingController();
  final TextEditingController controllerimage = TextEditingController();
  final TextEditingController controllersubject = TextEditingController();

  AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add News",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: add_Controler_Widgets(
        controlleradd: controlleradd,
        controllertitle: controllertitle,
        controllerdate: controllerdate,
        controllerauthor: controllerauthor,
        controllerauthorImage: controllerauthorImage,
        controllercontent: controllercontent,
        controllerimage: controllerimage,
        controllersubject: controllersubject,
      ),
    );
  }
}
