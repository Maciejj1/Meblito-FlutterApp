import 'package:flutter/material.dart';

class HorizontalListview extends StatelessWidget {
  const HorizontalListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'assets/category/lamp.png',
              image_caption: 'Lamp'),
          Category(
              image_location: 'assets/category/shelf.png',
              image_caption: 'Shelf'),
          Category(
              image_location: 'assets/category/sofa.png',
              image_caption: 'Sofa'),
          Category(
              image_location: 'assets/category/wardrobe.png',
              image_caption: 'Wardrobe'),
          Category(
              image_location: 'assets/category/chair.png',
              image_caption: 'Chair'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category(
      {super.key, required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
