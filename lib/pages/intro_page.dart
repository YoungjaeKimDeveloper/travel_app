import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/introBackground.jpg"),
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
                Text(
                  "Explore Your",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Destination, We\nProvide the Best",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "Accommodation",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Start Your journey with Comfortable\nAffordable and Tailor-made Accomodaton\nin Every Holiday\Destination",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontFamily: "Raleway",
                  ),
                ),

                // Direction and get Started
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
                      Navigator.pushNamed(context, "/main");
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
    );
  }
}
