
import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.seller,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<Product> products = [
  Product(
    title: "Trouser",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    image: "images/trouse1.jpg",
    price: 120,
    seller: "Tariqul Islam",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "trouser",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Trouser",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    image: "images/trouserr2.jpg",
    price: 120,
    seller: "Tariqul Islam",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "trouser",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Wireless Headphone",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    image: "images/tshirt1.jpg",
    price: 120,
    seller: "Tariqul Islam",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronic",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Wireless Headphone",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    image: "images/shirt.jpg",
    price: 120,
    seller: "Tariqul Islam",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronic",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Wireless Headphone",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    image: "images/shirt1.jpg",
    price: 120,
    seller: "Tariqul Islam",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronic",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Wireless Headphone",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    image: "images/shirt2.jpg",
    price: 120,
    seller: "Tariqul Islam",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronic",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Wireless Headphone",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    image: "images/frock4.jpg",
    price: 120,
    seller: "Tariqul Islam",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronic",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Wireless Headphone",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    image: "images/frock3.jpg",
    price: 120,
    seller: "Tariqul Islam",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronic",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
];
