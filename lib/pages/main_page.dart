import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Cateogry
import "package:travel_app/models/item_list.dart";
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
  Itemlist cateogry = Itemlist(
    backgroundImage: "",
    title: "Pizza",
    location: "New York",
    price: 15.0,
    review: 4,
    isCart: true,
    category: "Pizza",
  );
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pageList = [
      CoffeePage(),
      ChocoPage(),
      CakePage(),
      IceCreamPage(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grab a bite and sip",
          style: GoogleFonts.italianno(
            textStyle: TextStyle(fontWeight: FontWeight.bold),
            fontSize: 40.0,
          ),
        ),
      ),
      body: pageList[currentIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.coffee,
              color: currentIndex == 0 ? Colors.brown : Colors.grey,
            ),
            label: "Coffee",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.cake,
              color: currentIndex == 1 ? Colors.pink[500] : Colors.grey,
            ),
            label: "Cake",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.icecream,
              color: currentIndex == 2 ? Colors.blue[500] : Colors.grey,
            ),
            label: "Ice Cream",
          ),
          NavigationDestination(
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
