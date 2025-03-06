import 'package:flutter/material.dart';
import "package:travel_app/models/item_list.dart";

class CategoryTile extends StatelessWidget {
  // Member Variables
  List list;

  CategoryTile({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("../lib/images/coffee1.jpg")),
      ),
    );
  }
}
