import 'package:bloking_app/screens/add_screen.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../model/Card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 1,
      ),

      // botttom bar

      body: ListView.builder(
        itemCount: listProduct?.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: CardWidget(product: listProduct![index]),
            onLongPress: () {
              listProduct!.removeAt(index);
              setState(() {});
            },
          );
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddScreen(),
              ));
        },
      ),
    );
  }
}
