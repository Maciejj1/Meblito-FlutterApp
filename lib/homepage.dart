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
  final List _titles = ['Categories', 'Featured Products'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          ProductPlacement(),
          const SizedBox(height: 10),
          Title(
            title: _titles[1],
            color: Colors.black,
            child: Text(
              _titles[0],
              style: TextStyle(fontSize: 18),
            ),
          ),
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
          Title(
            title: _titles[1],
            color: Colors.black,
            child: Text(_titles[1], style: TextStyle(fontSize: 18)),
          ),
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
          ),
        ],
      ),
    );
  }
}
