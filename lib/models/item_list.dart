import 'package:flutter/material.dart';

class Itemlist {
  final String backgroundImage;
  final String title;
  final String location;
  final double price;
  final int review;
  final String category;
  final bool isCart;

  Itemlist({
    required this.backgroundImage,
    required this.title,
    required this.location,
    required this.price,
    required this.review,
    required this.category,
    required this.isCart,
  });

  @override
  String toString() {
    return 'Itemlist(title: $title, location: $location, price: $price, review: $review)';
  }
}
