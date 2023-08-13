import 'package:blog_app/App/Views/Screens/blogs_list_view.dart';
import 'package:blog_app/App/Views/Screens/user_articles_view.dart.dart';
import 'package:blog_app/App/utilities/extensions/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import '../../Screens/writing_view.dart';
import '/App/ViewModels/signup_viewmodel.dart';
import '../../Screens/search_view.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  late final UserViewModel userViewModel;
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Write New Article',
          baseStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: Colors.white, letterSpacing: .5, fontSize: 20),
          ),
          selectedStyle: GoogleFonts.montserrat(),
        ),
        const WriteArticleView(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'My Articles',
          baseStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: Colors.white, letterSpacing: .5, fontSize: 20),
          ),
          selectedStyle: GoogleFonts.montserrat(),
        ),
        const UserArticlesView(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Search',
          baseStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: Colors.white, letterSpacing: .5, fontSize: 20),
          ),
          selectedStyle: GoogleFonts.montserrat(),
        ),
        const SearchView(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: Colors.white, letterSpacing: .5, fontSize: 20),
          ),
          selectedStyle: GoogleFonts.montserrat(),
        ),
        const BlogsListView(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.black,
      backgroundColorAppBar: CustomColor.primary,
      withAutoTittleName: false,
    
      elevationAppBar: 0.0,
      screens: _pages,
      initPositionSelected: 3,
    );
  }
}
