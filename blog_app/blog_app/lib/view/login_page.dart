import 'package:blog_app/extention/size.dart';
import 'package:blog_app/main.dart';
import 'package:blog_app/view/init_page.dart';
import 'package:blog_app/widgets/button_widget.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/functions/appbar_function.dart';
import 'package:blog_app/widgets/textfield_widget.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController? idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarFun(title: 'LogIn'),
      backgroundColor: ColorsApp.primaryColor,
      body: Center(
        child: ListView(children: [
          SizedBox(
            height: context.getHeight() / 6,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextFieldWidget(
              textController: idController,
              hintText: "User ID",
              preIcon: const Icon(Icons.person),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: ButtonWidget(
              text: 'Login',
              onPressed: () {
                bool isFonund = false;
                final snackBar = SnackBar(
                  content: const TextWidget(
                    data: 'Please enter valid data',
                    textColor: Color.fromARGB(255, 47, 2, 2),
                    size: 15,
                  ),
                  backgroundColor: Colors.red[100]!,
                );
                if (idController!.text == '') {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  for (var element in blogsList) {
                    if (element.userId.toString() == idController!.text) {
                      isFonund = true;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InitPage(
                            userId: int.parse(idController!.text),
                          ),
                        ),
                      );
                    }
                  }
                  if (isFonund == false) {
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                }
              },
            ),
          )
        ]),
      ),
    );
  }
}
