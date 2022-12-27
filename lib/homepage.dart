import 'package:flutter/material.dart';
import 'package:meble/square.dart';
import 'package:meble/widgets/Categories.dart';
import 'package:meble/widgets/CustomBavigation.dart';
import 'package:meble/widgets/custom_text_field.dart';
import 'package:meble/widgets/horizontal_Listview.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:meble/widgets/products.dart';

class Homepage extends StatelessWidget {
  final List _titles = ['Categories', 'Featured Products'];
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/m1.png'),
          AssetImage('assets/images/m2.jpg'),
          AssetImage('assets/images/m3.jpg'),
          AssetImage('assets/images/m4.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 220.0,
                    child: new ListView(
                      children: [
                        image_carousel,
                        //padding widget

                        //Horizontal Listview
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Title(
                title: _titles[0],
                color: Colors.black,
                child: Text(_titles[0], style: TextStyle(fontSize: 18)),
              ),
            ),
            HorizontalListview(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Title(
                title: _titles[1],
                color: Colors.black,
                child: Text(_titles[1], style: TextStyle(fontSize: 18)),
              ),
            ),
            //grid view
            Container(
              height: 420,
              child: Products(),
            ),
          ],
        ),
      ),
    );
  }
}
