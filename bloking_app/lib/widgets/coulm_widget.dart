import 'package:bloking_app/main.dart';
import 'package:bloking_app/model/bloking_model.dart';
import 'package:bloking_app/screens/my_home_.dart';
import 'package:flutter/material.dart';

class coulomwedget extends StatelessWidget {
  const coulomwedget({
    super.key,
    required this.controllertitle,
    required this.controllerdate,
    required this.controlleradd,
    required this.controllerauthor,
    required this.controllercontent,
    required this.controllersubject,
  });

  final TextEditingController controllertitle;
  final TextEditingController controllerdate;
  final TextEditingController controlleradd;
  final TextEditingController controllerauthor;
  final TextEditingController controllercontent;
  final TextEditingController controllersubject;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(), labelText: "enter the title"),
          controller: controllertitle,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(), labelText: "enter date"),
          controller: controllerdate,
        ),
        IconButton(
          onPressed: () {
            final blogOb = Product(
              id: controlleradd.text,
              title: controllertitle.text,
              date: controllerdate.text,
              author: controllerauthor.text,
              content: controllercontent.text,
              image:
                  "https://duet-cdn.vox-cdn.com/thumbor/0x0:1290x860/1200x800/filters:focal(645x430:646x431):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/24841806/IMG_1562.jpg",
              subject: controllersubject.text,
            );

            listProduct!.add(blogOb);
            // Navigator.pop(context, "back");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()));
          },
          icon: const Icon(Icons.save),
        ),
      ],
    );
  }
}
