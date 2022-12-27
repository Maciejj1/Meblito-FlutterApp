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
    return GridView.builder(
      itemCount: _productList.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: ((context, index) {
        return Single_prod(
            product_name: _productList[index]['name'],
            product_image: _productList[index]['picture'],
            product_old_price: _productList[index]['old_price'],
            product_price: _productList[index]['price']);
      }),
    );
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
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "$product_price PLN",
                    style: TextStyle(fontSize: 10),
                  ),
                  subtitle: Text(
                    "$product_old_price PLN",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.blue,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                product_image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
