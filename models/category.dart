import 'package:flutter/material.dart';

class Category {
  final String backgroundImage;
  final String title;
  final String location;
  final double price;
  final int review;
  final bool isCart;

  Category({
    required this.backgroundImage,
    required this.title,
    required this.location,
    required this.price,
    required this.review,
    required this.isCart,
  });
}
