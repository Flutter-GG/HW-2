import 'package:blog_app/App/Views/Screens/auth_view.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'App/utilities/user_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider<UserState>(
      create: (context) => UserState(),
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFFEFEFEF)),
        scaffoldBackgroundColor:const Color(0XFFEFEFEF),

        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash:Image.asset(
         'assets/images/BLOGD.png'
        ),
       nextScreen: const AuthView(),
       splashTransition: SplashTransition.slideTransition,
       pageTransitionType: PageTransitionType.rightToLeftWithFade,
       backgroundColor:const Color(0XFFEFEFEF),
       ) ,
    );
  }
}


