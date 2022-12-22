import 'package:flutter/material.dart';
import 'package:meble/square.dart';
import 'package:meble/widgets/Categories.dart';
import 'package:meble/widgets/custom_text_field.dart';
import 'package:meble/widgets/product_placement.dart';

class Homepage extends StatelessWidget {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
  ];
  final List<IconData> _categories = [
    Icons.abc_outlined,
    Icons.home,
    Icons.access_alarm_outlined,
    Icons.access_alarm_outlined,
    Icons.access_alarm_outlined,
    Icons.access_alarm_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomTextField(),
          ProductPlacement(),
          Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: _categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Categories(
                    icona: _categories[index],
                  );
                }),
              )),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _posts[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
