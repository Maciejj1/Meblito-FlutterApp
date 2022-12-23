import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categories extends StatelessWidget {
  final IconData icona;

  const Categories({super.key, required this.icona});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: const Color(0xFF333333),
            borderRadius: BorderRadius.circular(20)),
        child: Icon(
          icona,
          color: Colors.white,
        ),
      ),
    );
  }
}
