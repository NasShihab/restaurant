import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class nasCarouselSlider extends StatefulWidget {
  const nasCarouselSlider({Key? key}) : super(key: key);

  @override
  State<nasCarouselSlider> createState() => _nasCarouselSliderState();
}

class _nasCarouselSliderState extends State<nasCarouselSlider> {
  int activeIndex = 0;

  final imglist = [
    'images/restro1.jpg',
    'images/restro1.jpg',
    'images/restro1.jpg',
    'images/restro1.jpg',
    'images/restro1.jpg',
  ];
  final categoryname = [
    'Tea',
    'Coffee',
    'Burger',
    'Cake',
    'Vanilla',
    'Tea',
    'Coffee',
    'Burger',
    'Cake',
    'Vanilla',
  ];
  final categorylist = [
    'images/tea.png',
    'images/coffee.png',
    'images/burger.png',
    'images/cake.png',
    'images/vanilla.png',
    'images/tea.png',
    'images/coffee.png',
    'images/burger.png',
    'images/cake.png',
    'images/vanilla.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            CarouselSlider.builder(
              itemCount: imglist.length,
              itemBuilder: (context, index, realIndex) {
                final img = imglist[index];
                return buildImage(img, index);
              },
              options: CarouselOptions(
                height: 110,
                pageSnapping: false,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
            ),
            SizedBox(height: 10),
            buildIndicator(),
          ],
        ),
      ],
    );
  }

  Widget buildImage(String img, int index) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 5, end: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Image.asset(img, fit: BoxFit.cover,),
      ),
    );
  }

  Widget buildIndicator() =>
      AnimatedSmoothIndicator(activeIndex: activeIndex, count: imglist.length);
}
