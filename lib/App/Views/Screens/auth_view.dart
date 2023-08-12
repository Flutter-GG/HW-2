import 'package:blog_app/App/Views/Screens/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFEFEFEF),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/BLOGD.png'),
            const SizedBox(height: 20),
            Text("Personal Blogging Partner",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                )),
            const SizedBox(height: 50),
            Image.asset('assets/images/Grad.png'),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpView()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFFEFEFEF),
                  elevation: 0,
                  minimumSize: const Size(300, 60),
                  side: const BorderSide(
                    color: Color(0XFF000000),
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Login',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: const Color(0XFF000000),
                    ))),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("New here?",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                  )),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpView()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF000000),
                  elevation: 0,
                  minimumSize: const Size(300, 60),
                  side: const BorderSide(
                    color: Color(0XFF000000),
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Register',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: const Color(0XFFEFEFEF),
                    )))
          ],
        ),
      ),
    );
  }
}
