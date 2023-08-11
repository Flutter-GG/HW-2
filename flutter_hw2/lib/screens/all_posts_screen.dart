import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_container_widget.dart';
import 'package:flutter_hw2/custom_widgets/custom_post_information.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';
import 'package:flutter_hw2/data/reading_from_json.dart';
import 'package:flutter_hw2/screens/single_post_screen.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePage();
// }

// class _HomePage extends State<HomePage> {
//   @override
//   void initState() {
//     super.initState();

//     for (var post in jsonData['posts']) {
//       postsList.add(PostsDataModel.fromJson(post));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: postsList.length,
//       itemBuilder: (context, index) {
//         var post = postsList[index];
//         return GestureDetector(
//           onTap: () {
//             _navigateToSinglePost(context, post);
//           },
//           child: CustomPostContainerWidget(
//             isBookedMark: post.isBookedmark ?? false,
//             profileName: post.userName,
//             title: post.title,
//             reactions: post.reactions,
//             profileImage: post.profileImage,
//             postImage: post.postImage,
//             date: post.date,
//             readTime: post.readingTime,
//             onPressedBookmark: () {
//               _isBookedmark(post);
//             },
//             onPressedOptions: () {},
//             onPressedRemove: () {},
//           ),
//         );
//       },
//     );
//   }

//   void _isBookedmark(PostsDataModel post) {
//     setState(() {
//       post.toggleReadInList();
//       if (post.isBookedmark!) {
//         readingList.add(post);
//       } else {
//         readingList.remove(post);
//       }
//     });
//   }

//   void _navigateToSinglePost(BuildContext context, PostsDataModel post) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => SinglePostPage(post: post),
//       ),
//     );
//   }
// }
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    for (var post in jsonData['posts']) {
      postsList.add(PostsDataModel.fromJson(post));
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomPostList(posts: postsList);
  }
}
