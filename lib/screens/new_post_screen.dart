import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/navig_wedget.dart';
import 'package:flutter_application_1/widgets/text_feld_widget.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({super.key});

  @override
  State<NewPostScreen> createState() => NewPostScreenState();
}

class NewPostScreenState extends State<NewPostScreen> {
  TextEditingController? titleController = TextEditingController();
  TextEditingController? detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text("Colse")),
              const Spacer(),
              TextButton(onPressed: () {}, child: const Text("Drafts")),
              TextButton(onPressed: () {}, child: const Text("Colse")),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFieldWidget(
                hintText: "Post Title..",
                obscureText: false,
                textController: titleController,
              ),
              TextFieldWidget(
                hintText: "Post",
                obscureText: false,
                textController: detailsController,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  context.pop();
                },
                child: Text("add"),
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    );
  }
}
