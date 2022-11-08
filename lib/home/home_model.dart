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

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
    title: "Wireless Controller for PS4™",
    price: 1000,
    description: "This is a red shirt. Material is agdjd",
    storeID: 1,
  ),
  Product(
      id: 2,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      title: "Wireless Controller for PS4™",
      price: 1000,
      description: "This is a red shirt. Material is agdjd",
      storeID: 1,
  ),
  Product(
      id: 3,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      title: "Wireless Controller for PS4™",
      price: 1000,
      description: "This is a red shirt. Material is agdjd",
      storeID: 2,
  ),
  Product(
      id: 4,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      title: "Wireless Controller for PS4™",
      price: 1000,
      description: "This is a red shirt. Material is agdjd",
      storeID: 2,
  ),
];

