import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/components/category_tile.dart';
import 'package:travel_app/models/repository.dart';

class CakePage extends StatelessWidget {
  const CakePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Repository>(
      builder: (context, value, child) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.8,
          ),
          itemCount: value.getCakeList().length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryTile(itemlist: value.getCakeList()[index]);
          },
        );
      },
    );
  }
}
