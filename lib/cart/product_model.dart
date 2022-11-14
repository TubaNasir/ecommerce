import 'package:flutter/material.dart';


class Product {
  final int id;
  final String title, description;
  final String image;
  final int price;
  final int storeID;
  int qty;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.storeID,
    required this.qty
  });
}