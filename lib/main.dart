import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/models/repository.dart';
import 'package:travel_app/pages/cart_page.dart';
import 'package:travel_app/pages/intro_page.dart';
import 'package:travel_app/pages/main_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Repository(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const IntroPage(),
        "/main": (context) => MainPage(),
        "/cart": (context) => CartPage(),
      },
    );
  }
}
