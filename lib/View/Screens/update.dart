import 'package:best_places/View/widget/app_bar.dart';
import 'package:best_places/View/widget/color.dart';
import 'package:best_places/view_model/islands_model.dart';
import 'package:best_places/View/widget/spaces.dart';
import 'package:flutter/material.dart';

class UpdatePlace extends StatefulWidget {
  const UpdatePlace({super.key, this.updateIsland});
  final Islands? updateIsland;
  @override
  State<UpdatePlace> createState() => UpdatePlaceState();
}

class UpdatePlaceState extends State<UpdatePlace> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  void initState() {
    if (widget.updateIsland.toString().isNotEmpty) {
      titleController = TextEditingController(text: widget.updateIsland!.title);
      descriptionController =
          TextEditingController(text: widget.updateIsland!.description);
      super.initState();
    }
  }

  State<UpdatePlace> createState() => UpdatePlaceState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.getAppBar("Update"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Space.spaceH16,
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  hintText: 'Place name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:  BorderSide(
                        width: 4, color: wordsColor),
                  ),
                ),
              ),
              Space.spaceH16,
              TextField(
                controller: descriptionController,
                maxLines: 30,
                decoration: InputDecoration(
                  hintText: 'Post content',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:  BorderSide(
                        width: 4, color: wordsColor),
                  ),
                ),
              ),
              Space.spaceH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style:ElevatedButton.styleFrom(backgroundColor:btnColor ),
                      onPressed: () {
                        //
                        widget.updateIsland!.title = titleController.text;
                        widget.updateIsland!.description =
                            descriptionController.text;

                        Navigator.pop(context, "update");
                        setState(() {});
                      },
                      child: const Text('Update')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
