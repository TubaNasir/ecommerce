import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final String image;
  final int price;
  final int storeID;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.storeID,
  });
}

class Order {
  final int id;
  final String name;
  final String address;
  final String city;
  final String status;
  final List<Product> products;

  Order({
    required this.id,
    required this.name,
    required this.address,
    required this.city,
    required this.status,
    required this.products
  });
}