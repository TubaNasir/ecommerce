import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final String image;
  final int price;
  final bool isFavourite;

  Product({
    required this.id,
    required this.image,
    this.isFavourite = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
    title: "Wireless Controller for PS4™",
    price: 1000,
    description: "This is a red shirt. Material is agdjd",
    isFavourite: true
  ),
  Product(
      id: 2,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      title: "Wireless Controller for PS4™",
      price: 1000,
      description: "This is a red shirt. Material is agdjd",
      isFavourite: true
  ),
  Product(
      id: 3,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      title: "Wireless Controller for PS4™",
      price: 1000,
      description: "This is a red shirt. Material is agdjd",
      isFavourite: true
  ),
  Product(
      id: 4,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      title: "Wireless Controller for PS4™",
      price: 1000,
      description: "This is a red shirt. Material is agdjd",
      isFavourite: true
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";