import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/components/favorite_tile.dart';
import 'package:travel_app/models/item_list.dart';
import 'package:travel_app/models/repository.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Repository>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: Colors.pink[50],
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Favorite",
              style: GoogleFonts.italianno(
                textStyle: TextStyle(fontWeight: FontWeight.bold),
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
          ),
          body: ListView.builder(
            itemCount: value.getCartList().length,
            itemBuilder:
                (_, index) =>
                    FavoriteTile(itemlist: value.getCartList()[index]),
          ),
        );
      },
    );
  }
}
