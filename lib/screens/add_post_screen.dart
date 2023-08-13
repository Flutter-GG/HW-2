import 'package:flutter/material.dart';
import 'package:hw2/components/buttons/button.dart';
import 'package:hw2/components/text/text_field_widget.dart';
import 'package:hw2/data/global_data.dart';
import 'package:hw2/data/post_model.dart';
import 'package:hw2/extensions/navigator.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final titleController = TextEditingController();
  final categoryController = TextEditingController();
  final postController = TextEditingController();
  final imageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
               TextFieldWidget(preIcon: const Icon(Icons.title),hint: "Add title",lable: "Title", controller: titleController,),
               TextFieldWidget(preIcon: const Icon(Icons.category_outlined),hint: "Add Category",lable: "Category" , controller: categoryController),
               TextFieldWidget(preIcon: const Icon(Icons.post_add_rounded),hint: "Add Post",lable: "Post",maxLines: 3,controller: postController,),
              //  TextFieldWidget(preIcon: const Icon(Icons.image),hint: "Add image URL",lable: "Image",controller:imageController),
              Button(text: "Save",onPress: ()  {

                // Todo => 1- edit this info , 
                if(titleController.text.isNotEmpty && postController.text.isNotEmpty){
                Post newPost = Post(
                  author: "No name yet",
                  avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaBtLtVoSyCnU4FwHwBsHCi3fuYNvu_pCxhQ&usqp=CAU",
                  date: "Dec 2020",
                  id: listPosts.length+1,
                  title: titleController.text,
                  category: categoryController.text,
                  post : postController.text,
                  postImage: "http://icon-library.com/images/none-icon/none-icon-1.jpg",
                  readingList: false,
                  readingTime: "3 min",
                  userId: 999,
                );
                listPosts.add(newPost);    
                context.pop(const AddPostScreen());      
                }
              },),
            ]
          ),
        ),
      ),
    );
  }
}