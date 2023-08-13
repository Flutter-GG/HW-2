import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home2/components/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 136, 97, 241),
        appBar: AppBar(
          title: Text('Our Restorant',
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28, color: Colors.white)
                  ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          minimum: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //shop name

              const SizedBox(
                height: 15,
                width: 900,
              ),

              // Image.asset("lib/Imges/spaguetti.png")
              const Padding(padding: EdgeInsets.all(20)),

              //icon
              Padding(
                padding: const EdgeInsets.all(30),
                child: Image.asset(
                  "lib/Imges/spaguetti.png",
                  width: 250,
                  height: 250,
                ),
              ),
              //subtitle
              Text(
                'The Destination Of All Hungry',
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 25, color: Colors.black),
              ),
              // const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5.0), // Adjust the horizontal padding as needed
                child: Text(
                  "The most beautiful and wonderful taste you may have tasted in your entire life, served by our professional chefs",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyBoutton(
                text: ("get Started"),
                onTap: () {
                  Navigator.pushNamed(context, '/menupage');
                },
              ),

              // get started button
            ],
          ),
        ));
  }
}
