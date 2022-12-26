import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List _productList = [
    {
      "name": "Shelf",
      "picture": "assets/products/shelf.png",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Chair",
      "picture": "assets/products/chair.png",
      "old_price": 360,
      "price": 250,
    },
    {
      "name": "Lamp",
      "picture": "assets/products/lamp.png",
      "old_price": 90,
      "price": 50,
    },
    {
      "name": "Wardrobe",
      "picture": "assets/products/wardrobe.png",
      "old_price": 1120,
      "price": 980,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final product_image;
  final product_old_price;
  final product_price;

  const Single_prod(
      {super.key,
      required this.product_name,
      required this.product_image,
      required this.product_old_price,
      required this.product_price});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
