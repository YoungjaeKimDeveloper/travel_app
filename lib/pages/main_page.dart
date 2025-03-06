import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Cateogry
import "package:travel_app/models/item_list.dart";

class MainPage extends StatelessWidget {
  MainPage({super.key});
  Itemlist cateogry = Itemlist(
    backgroundImage: "",
    title: "Pizza",
    location: "New York",
    price: 15.0,
    review: 4,
    isCart: true,
    category: "Pizza",
  );
  @override
  Widget build(BuildContext context) {
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

      // 화면을 동적으로 그리겠다는 의미
    );
  }
}
