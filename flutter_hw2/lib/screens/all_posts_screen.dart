import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_container_widget.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';
import 'package:flutter_hw2/data/reading_from_json.dart';
import 'package:flutter_hw2/screens/single_post_screen.dart';

// class HomePageLogic extends StatefulWidget {
//   const HomePageLogic({super.key});

//   @override
//   State<HomePageLogic> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePageLogic> {
//   @override
//   void initState() {
//     super.initState();

//     for (var post in jsonData['posts']) {
//       postsList.add(PostsDataModel.fromJson(post));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: ListView.builder(
//           itemCount: postsList.length,
//           itemBuilder: (context, index) {
//             var post = postsList[index];
//             return CustomPostContainerWidget(
//               profileName: post.userName,
//               title: post.title,
//               reactions: post.reactions,
//               profileImage: post.profileImage,
//               postImage: post.postImage,
//               date: post.date,
//               onPressedBookmark: () {},
//               onPressedOptions: () {},
//               onPressedRemove: () {},
//             );
//           }),
//     );
//   }
// }
class HomePageLogic extends StatefulWidget {
  const HomePageLogic({Key? key});

  @override
  State<HomePageLogic> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageLogic> {
  @override
  void initState() {
    super.initState();

    for (var post in jsonData['posts']) {
      postsList.add(PostsDataModel.fromJson(post));
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListView.builder(
          itemCount: postsList.length,
          itemBuilder: (context, index) {
            var post = postsList[index];
            return GestureDetector(
              onTap: () {
                _navigateToSinglePost(context, post);
              },
              child: CustomPostContainerWidget(
                profileName: post.userName,
                title: post.title,
                reactions: post.reactions,
                profileImage: post.profileImage,
                postImage: post.postImage,
                date: post.date,
                onPressedBookmark: () {},
                onPressedOptions: () {},
                onPressedRemove: () {},
              ),
            );
          }),
    );
  }

  void _navigateToSinglePost(BuildContext context, PostsDataModel post) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SinglePostPage(post: post),
      ),
    );
  }
}
