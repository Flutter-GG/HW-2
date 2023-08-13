import 'package:flutter/material.dart';
import 'package:flutter_application_1/datasets/data-json.dart';
import 'package:flutter_application_1/models/users_models.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

List<UsersModel> listUsers = [];

void main() {
  for (var element in usersData["usersList"]) {
    listUsers.add(UsersModel.fromJson(element));
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: HomeScreen()),
    );
  }
}
