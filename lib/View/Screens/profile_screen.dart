import 'package:best_places/View/widget/color.dart';
import 'package:best_places/View/widget/extinsions.dart';
import 'package:best_places/View/widget/spaces.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = context.getWidth();
    double height = context.getheight();
    return Stack(
      fit: StackFit.expand,
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 73),
            child: Column(
              children: [
                ClipOval(
                  child: Image.network(
                    "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=600",
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Space.spaceW8,
                Text(
                  'Neck carol',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: wordsColor,
                    fontSize: 34,
                    fontFamily: 'Nisebuschgardens',
                  ),
                ),
                Space.spaceH24,
                Container(
                  height: height * 0.4,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Space.spaceH24,
                        Text(
                          'Posts',
                          style: TextStyle(
                            color: wordsColor,
                            fontSize: 27,
                            fontFamily: 'Nunito',
                          ),
                        ),
                        const Divider(
                          thickness: 2.5,
                        ),
                        Container(
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 246, 246, 246),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
