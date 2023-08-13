import 'dart:convert';
import 'dart:io';

import 'package:bloking_app/screens/my_home_.dart';

import 'package:flutter/material.dart';

import 'model/bloking_model.dart';

List<Product>? listProduct = [];

void main() {
  File prooductFile =
      File("/Users/muhammed./HW-2/bloking_app/lib/data/data.json");
  var stringProduct = prooductFile.readAsStringSync();
  var productData = json.decode(stringProduct);

  for (var elem in productData["products"]) {
    listProduct?.add(Product.fromJson(elem));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
