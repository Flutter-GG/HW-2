import 'package:best_places/View/Screens/search.dart';
import 'package:best_places/view_model/card_widget.dart';
import 'package:best_places/main.dart';
import 'package:flutter/material.dart';

result() {
  List<Widget> result = [];

  for (var element in listIslands) {
    if (element.title!.toLowerCase().contains(controllerTitle.text)) {
      result.add(SizedBox(height: 250, child: CardWidget(island: element)));
    }
  }
  return result;
}
