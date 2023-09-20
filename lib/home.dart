import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final bool _customicon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanstin sample')),
      body: Container(
        child: ExpansionTile(
          title: Text('Expansion tyle'),
          trailing: Icon(_customicon
              ? Icons.arrow_drop_down_circle
              : Icons.arrow_drop_down),
          children: [
            Container(
              child: CarouselSlider(
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Text(
                        'Slider $i',
                        style: TextStyle(fontSize: 20),
                      )),
                    );
                  }).toList(),
                  options: CarouselOptions(height: 300)),
            ),
          ],
          onExpansionChanged: (bool expanded) {},
        ),
      ),
    );
  }
}
