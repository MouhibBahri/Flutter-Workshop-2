pimport 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  final List<Widget> items;

  const CarouselWidget({required this.items});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false, // Set to true for infinite scroll
        viewportFraction: 0.8, // Adjust the fraction as needed
        autoPlay: false, // Set to true for autoplay
      ),
      items: items.map((widget) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height *
                  0.6, // Adjust the height as needed
              child: Center(child: widget),
            );
          },
        );
      }).toList(),
    );
  }
}
