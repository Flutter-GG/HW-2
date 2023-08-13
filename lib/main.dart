import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'App/Views/Screens/auth_view.dart';
import 'App/ViewModels/blog_viewmodel.dart';
import 'App/utilities/extensions/colors.dart';
import 'App/utilities/user_state.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<UserState>(
          create: (context) => UserState(),
        ),
        ChangeNotifierProvider<BlogViewModel>(
          create: (context) => BlogViewModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColor.primary,
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset('assets/images/BLOGD.png'),
        nextScreen: const AuthView(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        backgroundColor: const Color(0XFFEFEFEF),
      ),
    );
  }
}
