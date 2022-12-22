import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: const TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.menu)),
      ),
    );
  }
}
