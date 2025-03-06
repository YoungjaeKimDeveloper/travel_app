import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {},
      ),
    );
  }
}
