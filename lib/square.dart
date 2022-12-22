import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySquare extends StatelessWidget {
  final String child;

  const MySquare({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
      child: Container(
        height: 200,
        width: 50,
        color: Colors.deepPurple[200],
        child: Text(child),
      ),
    );
  }
}
