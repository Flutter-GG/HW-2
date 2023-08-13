import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/new_post_screen.dart';
import 'package:flutter_application_1/ui_class/colors_app.dart';

class FloatingBarWidget extends StatefulWidget {
  const FloatingBarWidget({super.key});

  @override
  State<FloatingBarWidget> createState() => FloatingBarWidgetState();
}

class FloatingBarWidgetState extends State<FloatingBarWidget> {
  @override
  Widget build(BuildContext context) {
    return   FloatingActionButton(
        onPressed: (){
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewPostScreen()))
              .then((value) => {
                    if (value == '') {setState(() {})}
                  });
        },
        child: Icon(Icons.add),
        backgroundColor: ColorApp.blackColor,
        foregroundColor: ColorApp.whiteColor,
        elevation: 0,
        
    );
  }
}