import 'package:bloking_app/widgets/coulm_widget.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController controlleradd = TextEditingController();

  final TextEditingController controllertitle = TextEditingController();

  final TextEditingController controllerdate = TextEditingController();

  final TextEditingController controllerauthor = TextEditingController();

  final TextEditingController controllerauthorImage = TextEditingController();

  final TextEditingController controllercontent = TextEditingController();

  final TextEditingController controllerimage = TextEditingController();

  final TextEditingController controllersubject = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add News",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ControllerWidgets(
        controlleradd: controlleradd,
        controllertitle: controllertitle,
        controllerdate: controllerdate,
        controllerauthor: controllerauthor,
        controllercontent: controllercontent,
        controllerimage: controllerimage,
        controllersubject: controllersubject,
      ),
    );
  }
}

class ControllerWidgets extends StatelessWidget {
  final TextEditingController controlleradd;
  final TextEditingController controllertitle;
  final TextEditingController controllerdate;
  final TextEditingController controllerauthor;
  // final TextEditingController controllerauthorImage;
  final TextEditingController controllercontent;
  final TextEditingController controllerimage;
  final TextEditingController controllersubject;

  ControllerWidgets({
    Key? key,
    required this.controlleradd,
    required this.controllertitle,
    required this.controllerdate,
    required this.controllerauthor,
    // required this.controllerauthorImage,
    required this.controllercontent,
    required this.controllerimage,
    required this.controllersubject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: coulomwedget(
          controllertitle: controllertitle,
          controllerdate: controllerdate,
          controlleradd: controlleradd,
          controllerauthor: controllerauthor,
          controllercontent: controllercontent,
          controllersubject: controllersubject),
    );
  }
}
