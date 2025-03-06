import 'package:travel_app/models/item_list.dart';

class Repository {
  List<Itemlist> coffeeList = [
    Itemlist(
      backgroundImage: "../images/coffees/coffee0.jpg",
      title: "Brewed Bliss",
      location: "Sydney",
      price: 12,
      review: 3,
      category: "coffee",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/coffees/coffee1.jpg",
      title: "Cafe Serenade",
      location: "Melbourne",
      price: 8,
      review: 4,
      category: "coffee",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/coffees/coffee2.jpg",
      title: "The Roasted Bean",
      location: "Sydney",
      price: 10,
      review: 5,
      category: "coffee",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/coffees/coffee3.jpg",
      title: "The Roasted Bean",
      location: "Perth",
      price: 7,
      review: 4,
      category: "coffee",
      isCart: false,
    ),
  ];
}
