import 'package:flutter/material.dart';
import 'package:hw2/components/buttons/button.dart';
import 'package:hw2/components/text/text_field_widget.dart';
import 'package:hw2/data/post_model.dart';
import 'package:hw2/extensions/navigator.dart';
import 'package:hw2/screens/add_post_screen.dart';
import 'package:hw2/screens/posts_screen.dart';

class Edit_Screen extends StatefulWidget {
  const Edit_Screen({super.key, required this.post});
  final Post post;

  @override
  State<Edit_Screen> createState() => _Edit_ScreenState();
}

class _Edit_ScreenState extends State<Edit_Screen> {
final titleController = TextEditingController();
  final postController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleController.text = widget.post.title!;
    postController.text = widget.post.post!;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
               TextFieldWidget(preIcon: const Icon(Icons.title),hint: "Add title",lable: "Title", controller: titleController,),
               TextFieldWidget(preIcon: const Icon(Icons.post_add_rounded),hint: "Add Post",lable: "Post",maxLines: 3,controller: postController,),
              //  TextFieldWidget(preIcon: const Icon(Icons.image),hint: "Add image URL",lable: "Image",controller:imageController),
              Button(text: "Save",onPress: ()  {

                if(titleController.text.isNotEmpty && postController.text.isNotEmpty){
                  widget.post.title =  titleController.text;
                  widget.post.post =  postController.text;
                }
                context.pop(const AddPostScreen());      
                context.findAncestorStateOfType<PostsScreenState>()!.setState(() {
                });
                setState(() {
                });
              },),
            ]
          ),
        ),
      ),
    );
  }
}