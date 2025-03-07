import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/introBackground.jpg"),
            colorFilter: ColorFilter.mode(
              // ignore: deprecated_member_use
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
            fit: BoxFit.fill,
            opacity: 0.8,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo
            Padding(
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.home_work_outlined,
                size: 50,
                color: Colors.white,
              ),
            ),
            // Description
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    // Deafult Text Style
                    TextSpan(
                      style: GoogleFonts.cormorantSc(
                        height: 2.0,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 24.0,
                        ),
                      ),
                      children: [
                        TextSpan(
                          text: "\nSweet ",
                          style: GoogleFonts.eczar(
                            textStyle: TextStyle(
                              color: Colors.brown[100],
                              fontWeight: FontWeight.w900,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "Love",
                          style: GoogleFonts.eczar(
                            textStyle: TextStyle(
                              color: Colors.red[400],
                              fontWeight: FontWeight.w900,
                              fontSize: 30.0,
                            ),
                          ),
                        ),

                        TextSpan(
                          text: " \nThe Local Shop",
                          style: GoogleFonts.cormorantSc(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "\nStart making",
                          style: GoogleFonts.goblinOne(
                            textStyle: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "\nmemories ",
                          style: GoogleFonts.goblinOne(
                            textStyle: TextStyle(
                              color: Colors.pink[50],
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // Direction and get Started
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.maxFinite,
                    height: 50,
                    margin: EdgeInsets.only(
                      top: 40,
                      left: 40,
                      right: 40,
                      bottom: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "/main");
                      },
                      child: Center(
                        child: Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
