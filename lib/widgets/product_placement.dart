import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPlacement extends StatelessWidget {
  const ProductPlacement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Image.asset(
        'assets/images/placement.png',
      ),
    ));
  }
}
