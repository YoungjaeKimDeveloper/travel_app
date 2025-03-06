import 'package:flutter/material.dart';
import 'package:travel_app/models/item_list.dart';

class Repository extends ChangeNotifier {
  // Coffee List
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
      backgroundImage: "../images/coffees/coffee1.png",
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
      title: "Morning Brew",
      location: "Perth",
      price: 7,
      review: 4,
      category: "coffee",
      isCart: false,
    ),
  ];

  // Ice Cream List
  List<Itemlist> iceCreamList = [
    Itemlist(
      backgroundImage: "../images/icecream/icecream1.jpg",
      title: "Icecream Frozen Delight",
      location: "Sydney",
      price: 5,
      review: 4,
      category: "ice cream",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/icecream/icecream2.jpg",
      title: "Icecream Choco Swirl",
      location: "Melbourne",
      price: 6,
      review: 5,
      category: "ice cream",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/icecream/icecream3.jpg",
      title: "Icecream Berry Bliss",
      location: "Sydney",
      price: 4,
      review: 3,
      category: "ice cream",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/icecream/icecream4.jpg",
      title: "Icecream Vanilla Dream",
      location: "Melbourne",
      price: 5,
      review: 5,
      category: "ice cream",
      isCart: false,
    ),
  ];

  // Chocolate List
  List<Itemlist> chocolateList = [
    Itemlist(
      backgroundImage: "../images/chocolate/chocolate1.jpg",
      title: "Dark Temptation",
      location: "Sydney",
      price: 3,
      review: 5,
      category: "chocolate",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/chocolate/chocolate2.jpg",
      title: "Milk Chocolate Dream",
      location: "Melbourne",
      price: 4,
      review: 4,
      category: "chocolate",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/chocolate/chocolate3.jpg",
      title: "Chocolate Cravings",
      location: "Sydney",
      price: 5,
      review: 5,
      category: "chocolate",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/chocolate/chocolate4.jpg",
      title: "Caramel Chocolate Delight",
      location: "Melbourne",
      price: 6,
      review: 4,
      category: "chocolate",
      isCart: false,
    ),
  ];

  // Cake List
  List<Itemlist> cakeList = [
    Itemlist(
      backgroundImage: "../images/cakes/cake0.jpg",
      title: "Velvet Indulgence",
      location: "Sydney",
      price: 15,
      review: 4,
      category: "cake",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/cakes/cake1.jpg",
      title: "Chocolate Fantasy",
      location: "Melbourne",
      price: 18,
      review: 5,
      category: "cake",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/cakes/cake2.jpg",
      title: "Lemon Cheesecake",
      location: "Sydney",
      price: 14,
      review: 4,
      category: "cake",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "../images/cakes/cake3.jpg",
      title: "Strawberry Shortcake",
      location: "Melbourne",
      price: 16,
      review: 5,
      category: "cake",
      isCart: false,
    ),
  ];
  // 장바구니
  List<Itemlist> itemCart = [];
  // 장바구니 method + 추가
  void addItem(Itemlist list) {
    itemCart.add(list);
    notifyListeners();
  }

  // 장바구니 method + 제거
  void deleteItem(Itemlist list) {
    itemCart.remove(list);
    notifyListeners();
  }

  // 리스트 종류
  // 커피샵 리스트
  List<Itemlist> getCoffeeLists() {
    return coffeeList;
  }

  // 케이크 리스트
  List<Itemlist> getCakeList() {
    return cakeList;
  }

  // 초콜릿샵 리스트
  List<Itemlist> getChocolateList() {
    return chocolateList;
  }

  // 아이스크림 리스트
  List<Itemlist> getIcemcreamList() {
    return iceCreamList;
  }
}
