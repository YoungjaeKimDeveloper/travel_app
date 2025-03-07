import 'package:flutter/material.dart';
import 'package:travel_app/models/item_list.dart';

class Repository extends ChangeNotifier {
  // Coffee List
  List<Itemlist> coffeeList = [
    Itemlist(
      backgroundImage: "assets/images/coffees/coffee0.jpg",
      title: "Brewed Bliss",
      location: "Sydney",
      price: 12,
      review: 2,
      category: "coffee",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/coffees/coffee1.png",
      title: "Cafe Serenade",
      location: "Melbourne",
      price: 8,
      review: 1,
      category: "coffee",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/coffees/coffee2.jpg",
      title: "The Roasted Bean",
      location: "Sydney",
      price: 10,
      review: 3,
      category: "coffee",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/coffees/coffee3.jpg",
      title: "Morning Brew",
      location: "Perth",
      price: 7,
      review: 2,
      category: "coffee",
      isCart: false,
    ),
  ];

  // Ice Cream List
  List<Itemlist> iceCreamList = [
    Itemlist(
      backgroundImage: "assets/images/icecream/icecream0.jpg",
      title: "Frozen Delight",
      location: "Sydney",
      price: 5,
      review: 3,
      category: "ice cream",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/icecream/icecream1.jpg",
      title: "Choco Swirl",
      location: "Melbourne",
      price: 6,
      review: 2,
      category: "ice cream",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/icecream/icecream2.jpg",
      title: "Berry Bliss",
      location: "Sydney",
      price: 4,
      review: 1,
      category: "ice cream",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/icecream/icecream3.jpg",
      title: "Vanilla Dream",
      location: "Melbourne",
      price: 5,
      review: 2,
      category: "ice cream",
      isCart: false,
    ),
  ];

  // Chocolate List
  List<Itemlist> chocolateList = [
    Itemlist(
      backgroundImage: "assets/images/chocolate/chocolate0.jpg",
      title: "Dark Temptation",
      location: "Sydney",
      price: 3,
      review: 2,
      category: "chocolate",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/chocolate/chocolate1.jpg",
      title: "Chocolate Dream",
      location: "Melbourne",
      price: 4,
      review: 3,
      category: "chocolate",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/chocolate/chocolate2.jpg",
      title: "Chocolate Cravings",
      location: "Sydney",
      price: 5,
      review: 5,
      category: "chocolate",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/chocolate/chocolate3.jpg",
      title: "Caramel Delight",
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
      backgroundImage: "assets/images/cakes/cake0.jpg",
      title: "Velvet Indulgence",
      location: "Sydney",
      price: 15,
      review: 2,
      category: "cake",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/cakes/cake1.jpg",
      title: "Chocolate",
      location: "Melbourne",
      price: 18,
      review: 3,
      category: "cake",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/cakes/cake2.jpg",
      title: "Cheesecake",
      location: "Sydney",
      price: 14,
      review: 1,
      category: "cake",
      isCart: false,
    ),
    Itemlist(
      backgroundImage: "assets/images/cakes/cake3.jpg",
      title: "ShortCake",
      location: "Melbourne",
      price: 16,
      review: 2,
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
