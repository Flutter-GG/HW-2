import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_container_widget.dart';
import 'package:flutter_hw2/custom_widgets/custom_post_information.dart';
import 'package:flutter_hw2/data/data_model.dart';
// import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';
import 'package:flutter_hw2/screens/single_post_screen.dart';

// class SearchPostsPage extends StatefulWidget {
//   const SearchPostsPage({super.key});

//   @override
//   State<SearchPostsPage> createState() => _SearchPostsPageState();
// }

// class _SearchPostsPageState extends State<SearchPostsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextField(
//           onSubmitted: (value) {
//             setState(() {
//               searchList.clear();
//             });

//             // Perform search logic
//             for (var post in postsList) {
//               if (post.title?.toLowerCase().contains(value.toLowerCase()) ==
//                   true) {
//                 setState(() {
//                   searchList.add(post);
//                 });
//               }
//             }
//           },
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: searchList.length,
//             itemBuilder: (context, index) {
//               var post = searchList[index];
//               return GestureDetector(
//                 onTap: () {
//                   _navigateToSinglePost(context, post);
//                 },
//                 child: CustomPostContainerWidget(
//                   isBookedMark: post.isBookedmark ?? false,
//                   profileName: post.userName,
//                   title: post.title,
//                   reactions: post.reactions,
//                   profileImage: post.profileImage,
//                   postImage: post.postImage,
//                   date: post.date,
//                   onPressedBookmark: () {
//                     _isBookedmark(post);
//                   },
//                   onPressedOptions: () {},
//                   onPressedRemove: () {},
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
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
class SearchPostsPage extends StatefulWidget {
  const SearchPostsPage({super.key});

  @override
  State<SearchPostsPage> createState() => _SearchPostsPageState();
}

class _SearchPostsPageState extends State<SearchPostsPage> {
  List<PostsDataModel> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onSubmitted: (value) {
            setState(() {
              searchResults.clear();
            });

            for (var post in postsList) {
              if (post.title?.toLowerCase().contains(value.toLowerCase()) ==
                  true) {
                setState(() {
                  searchResults.add(post);
                });
              }
            }
          },
        ),
        Expanded(
          child: CustomPostList(posts: searchResults),
        ),
      ],
    );
  }
}
