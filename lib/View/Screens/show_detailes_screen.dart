import 'package:best_places/View/widget/app_bar.dart';
import 'package:best_places/View/widget/color.dart';
import 'package:best_places/view_model/islands_model.dart';
import 'package:best_places/View/widget/spaces.dart';
import 'package:flutter/material.dart';

class Show extends StatefulWidget {
  const Show({super.key, required this.island});
  final Islands island;
  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.getAppBar("Post"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.island.title!,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 42, color: wordsColor),
            ),
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    widget.island.person!,
                    height: 50,
                    width: 50,
                  ),
                ),
                Space.spaceW16,
                Text(
                  widget.island.name!,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: wordsColor),
                ),
                Space.spaceW200,
                Space.spaceW32,
                Text(
                  " ${widget.island.rating.toString()}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Space.spaceH24,
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                widget.island.thumbnail!,
                height: 200,
                width: 400,
                fit: BoxFit.fill,
              ),
            ),
            Space.spaceH32,
            Text(
              widget.island.description!,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: wordsColor),
            ),
            Space.spaceH16,
            Text(
              "Approximate Budget is : ${widget.island.approximateBudget.toString()}\$",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: wordsColor),
              textAlign: TextAlign.center,
            ),
            Space.spaceH8,
          ],
        ),
      ),
    );
  }
}
