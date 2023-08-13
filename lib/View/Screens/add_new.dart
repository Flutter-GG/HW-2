import 'package:best_places/View/Screens/home_screen.dart';
import 'package:best_places/View/widget/color.dart';
import 'package:best_places/view_model/islands_model.dart';
import 'package:best_places/main.dart';
import 'package:best_places/View/widget/spaces.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  AddScreen({super.key});
  final TextEditingController? controllerNewPost = TextEditingController();
  final TextEditingController? controllerSubTitle = TextEditingController();
  final TextEditingController? controllerDescreption = TextEditingController();
  final TextEditingController? controllerApproxBudget = TextEditingController();
  final TextEditingController? controllerRating = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Post"),
          backgroundColor: btnColor,
          centerTitle: true,
          leading: const BackButton(color: Color.fromARGB(255, 255, 254, 254)),
          actions: [
            IconButton(
                onPressed: () {
                  final ob = Islands(
                      id: 1986,
                      title: controllerNewPost!.text,
                      subtitle: controllerSubTitle!.text,
                      description: controllerDescreption!.text,
                      approximateBudget:
                          int.parse(controllerApproxBudget!.text),
                      rating: double.parse(controllerRating!.text),
                      thumbnail:
                          "https://st2.depositphotos.com/2234823/8227/i/450/depositphotos_82277240-stock-photo-image.jpg",
                      name: "Anonymous",
                      person:
                          "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
                          );

                  listIslands.add(ob);
                 Navigator.pop(context, "back");
                },
                icon: const Icon(Icons.save))
          ],
        ),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controllerNewPost,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 4, color: btnColor),
                          ),
                          hintText: "Post Title"),
                    ),
                  ),
                  Space.spaceH64,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controllerSubTitle,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 4, color: btnColor),
                          ),
                          hintText: "Post Title"),
                    ),
                  ),
                  Space.spaceH64,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controllerDescreption,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 4, color: btnColor),
                          ),
                          hintText: "Post Content"),
                      maxLines: 10,
                    ),
                  ),
                  Space.spaceH24,
                  SizedBox(
                    width: 200,
                    height: 100,
                    child: TextField(
                      controller: controllerApproxBudget,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 4, color: btnColor),
                          ),
                          hintText: "Approxmate Budget"),
                    ),
                  ),
                  Space.spaceH8,
                  SizedBox(
                    width: 200,
                    height: 100,
                    child: TextField(
                      controller: controllerRating,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 4, color: btnColor),
                          ),
                          hintText: "Rate your Visit! "),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
