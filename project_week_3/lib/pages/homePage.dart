import 'package:flutter/material.dart';
import 'package:project_week_3/main.dart';
import 'package:project_week_3/pages/addPage.dart';
import 'package:project_week_3/units/extention/spasing.dart';
import 'package:project_week_3/wedgits/bottomWedgit.dart';
import 'package:project_week_3/wedgits/cardWedgit.dart';
import '../units/ui_classes/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsApp.purpleColor,
        appBar: AppBar(
          title: const Text("Home Page"),
          backgroundColor: ColorsApp.purpleColor,
        ),
        // flating button
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PSpasing.pHSpasing24,
            FloatingActionButton(
              heroTag: "btnAdd",
              backgroundColor: ColorsApp.purpleColor,
              child: const Icon(Icons.playlist_add_outlined),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddPage())),
            ),
          ],
        ),

        // BottomNavigationBar//
        bottomNavigationBar: BottomWedgit(),

        //body
        body: ListView.builder(
            itemCount: ListBlogs!.length,
            itemBuilder: (context, index) {
              return CardWidget(
                blog: ListBlogs![index],
                newFunction: () {
                  setState(() {});
                },
              );
            }));
  }
}
