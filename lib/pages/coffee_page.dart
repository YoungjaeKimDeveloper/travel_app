import 'package:flutter/material.dart';
import 'package:travel_app/models/item_list.dart';

class CoffeePage extends StatelessWidget {
  CoffeePage({super.key});
  // Test
  Itemlist itemlist = Itemlist(
    backgroundImage:
        "/Users/youngjaekim/Desktop/travelApp/travel_app/assets/images/cakes/cake0.jpg",
    title: "Icecream Frozen ",
    location: "Sydney",
    price: 5,
    review: 4,
    category: "ice cream",
    isCart: false,
  );
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (BuildContext context,int index){
      
    });
  }
}
