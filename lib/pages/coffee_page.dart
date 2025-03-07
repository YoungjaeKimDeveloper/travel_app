import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/components/category_tile.dart';
import 'package:travel_app/models/item_list.dart';
import 'package:travel_app/models/repository.dart';

class CoffeePage extends StatefulWidget {
  CoffeePage({super.key});

  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  // Repositry 에서 정보 가져와 줘야함

  @override
  Widget build(BuildContext context) {
    return Consumer<Repository>(
      builder: (context, value, child) {
        return GridView.builder(
          padding: EdgeInsets.all(5),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.8,
          ),
          itemCount: value.getCoffeeLists().length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryTile(itemlist: value.getCoffeeLists()[index]);
          },
        );
      },
    );
  }
}
