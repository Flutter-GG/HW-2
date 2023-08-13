import 'package:flutter/material.dart';
import 'package:home2/models/food.dart';
import 'package:home2/screens/home_page.dart';
import 'menue_page.dart';

List<Food>? listProducts = [];

void main() {
  runApp(const MyApp());

  // for (var element in productsData["products"]) {
  //  // listProducts!.add(Mails.fromJson(element);
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/intro': (context) => const HomePage(),
        '/login': (context) => const MyApp(),
       '/menupage': (context) => MenuPage(),


                               
                               
      },
    );
  }
}
