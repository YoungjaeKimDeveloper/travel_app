import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Cateogry
import 'package:travel_app/pages/cake_page.dart';
import 'package:travel_app/pages/choco_page.dart';
import 'package:travel_app/pages/coffee_page.dart';
import 'package:travel_app/pages/ice_cream_page.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pageList = [
      CoffeePage(),
      CakePage(),
      IceCreamPage(),
      ChocoPage(),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Grab a bite and sip",
          style: GoogleFonts.italianno(
            textStyle: TextStyle(fontWeight: FontWeight.bold),
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/favorite");
            },
            icon: Icon(Icons.favorite, color: Colors.white),
          ),
        ],
      ),
      body: pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.coffee,
              color: currentIndex == 0 ? Colors.brown : Colors.grey,
            ),
            label: "Coffee",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cake,
              color: currentIndex == 1 ? Colors.pink[500] : Colors.grey,
            ),
            label: "Cake",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.icecream,
              color: currentIndex == 2 ? Colors.blue[500] : Colors.grey,
            ),
            label: "Ice Cream",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.egg_alt,
              color: currentIndex == 3 ? Colors.brown[500] : Colors.grey,
            ),
            label: "Chocolate",
          ),
        ],
      ),
      // 화면을 동적으로 그리겠다는 의미
    );
  }
}
