import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/components/category_tile.dart';
import 'package:travel_app/models/repository.dart';

class IceCreamPage extends StatelessWidget {
  const IceCreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Consumer로 데이터 공유사용할수있도록함
    return Consumer<Repository>(
      builder: (context, value, child) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.8,
          ),
          itemCount: value.getIcemcreamList().length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryTile(itemlist: value.getIcemcreamList()[index]);
          },
        );
      },
    );
  }
}
