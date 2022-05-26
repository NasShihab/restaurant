import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/widget/ratingBuilder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int activeIndex = 0;

  final imglist = [
    'images/restro2.jpg',
    'images/restro2.jpg',
    'images/restro2.jpg',
    'images/restro2.jpg',
    'images/restro2.jpg',
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 10),
                // 1. Address
                Container(
                  margin: EdgeInsetsDirectional.only(start: 10, end: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home, color: Colors.black38),
                          Text(
                            '76A eight avenue,New York,US',
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.notifications_on_sharp),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                // 2. Search Bar
                Container(
                  margin: EdgeInsetsDirectional.only(start: 15, end: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.green,
                  )),
                  child: CupertinoSearchTextField(),
                ),
                SizedBox(height: 10),
                // 3. poster
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider.builder(
                      itemCount: imglist.length,
                      itemBuilder: (context, index, realIndex) {
                        final img = imglist[index];
                        return buildImage(img, index);
                      },
                      options: CarouselOptions(
                        viewportFraction: 0.8,
                        height: 155,
                        pageSnapping: false,
                        enableInfiniteScroll: true,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                      ),
                    ),
                    SizedBox(height: 5),
                    buildIndicator(),
                  ],
                ),
                SizedBox(height: 10),
                //Text - - Categoru
                Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(start: 10),
                      child: Text(
                        'Category',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                // 4. Category
                Container(
                  margin: EdgeInsetsDirectional.only(start: 15),
                  height: 90,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categorylist.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsetsDirectional.only(end: 15),
                              height: 60,
                              width: 60,
                              child: Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                color: Colors.white,
                                child: Container(
                                    padding: EdgeInsetsDirectional.all(5),
                                    child:
                                        Image.asset('${categorylist[index]}')),
                              ),
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(end: 15),
                                child: Text(
                                  '${categoryname[index]}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          ],
                        );
                      }),
                ),
                SizedBox(height: 10),
                //Text - - Popular Food Nearby
                Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(start: 10),
                      child: Text(
                        'Popular Food Nearby',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                // Popular Food er name price etc
                Container(
                  margin: EdgeInsetsDirectional.only(start: 15),
                  height: 110,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(
                              child: Container(
                                margin: EdgeInsetsDirectional.only(end: 15),
                                height: 100,
                                width: 300,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.shade100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                margin:
                                                    EdgeInsetsDirectional.all(
                                                        3),
                                                child: Container(
                                                  margin:
                                                      EdgeInsetsDirectional.all(
                                                          3),
                                                  child: Card(
                                                    color: Colors.grey,
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Image.asset(
                                                            'images/burgeroffer.jpg')),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsetsDirectional.all(7),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Burger',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'Mc Donald, New Yourk, USA',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Row(
                                              children: [
                                                ooClass(),
                                                SizedBox(width: 5),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      '\$5',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      '\$10',
                                                      style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.add),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String img, int index) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 5, end: 5),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12), child: Image.asset(img)),
    );
  }

  Widget buildIndicator() =>
      AnimatedSmoothIndicator(activeIndex: activeIndex, count: imglist.length);

  // Widget starRating() => RatingBar.builder(
  //     updateOnDrag: true,
  //     minRating: 1,
  //     itemSize: 13,
  //     itemBuilder: (context, _) =>
  //         Icon(Icons.star, color: Colors.amber),
  //     onRatingUpdate: (rating) {
  //       setState(() {
  //         this.rating = rating;
  //       });
  //     });
}
