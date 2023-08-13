import 'package:best_places/View/Screens/add_new.dart';
import 'package:best_places/View/widget/app_bar.dart';
import 'package:best_places/View/widget/color.dart';
import 'package:best_places/View/widget/extinsions.dart';
import 'package:best_places/main.dart';
import 'package:best_places/view_model/card_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.getAppBar("Islands Blog"),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: "btnSearch",
        backgroundColor: btnColor,
        child: Icon(Icons.add_circle),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => _editAction())),
      ),
      body: Column(
        children: [
          SizedBox(
            height: context.getheight() / 1.25,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                    child: SizedBox(
                        height: 250,
                        child: CardWidget(
                          island: listIslands[index],
                        )),
                    onLongPress: () {
                      listIslands.removeAt(index);
                      setState(() {});
                    });
              },
              itemCount: listIslands.length,
            ),
          ),
        ],
      ),
    );
  }

  _editAction() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => AddScreen()))
          .then((value) {
        if (value == "back") setState(() {});
      });
    });
  }
}
