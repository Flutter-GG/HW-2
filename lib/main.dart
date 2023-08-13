import 'package:best_places/view_model/islands_model.dart';
import 'package:best_places/models/data/best_place_data.dart';
import 'package:best_places/View/widget/navigation_bar.dart';
import 'package:flutter/material.dart';

List<Islands> listIslands = [];
void main() {
  for (var element in islandData["island"]) {
    listIslands.add(Islands.fromJson(element));
  }
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ButtonNavigationBar(),
    );
  }
}
