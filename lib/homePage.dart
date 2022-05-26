import 'package:flutter/material.dart';
import 'package:restaurant/widget/nasCarouselSlider.dart';
import 'package:restaurant/widget/nasCategoryList.dart';
import 'package:restaurant/widget/nasPopularFoodNearby.dart';
import 'package:restaurant/widget/nasSearchBar.dart';

// ignore: must_be_immutable
class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
                nasSearchBar(),
                SizedBox(height: 10),
                // 3. poster
                nasCarouselSlider(),
                SizedBox(height: 10),
                // 4. Category
                nasCategoryList(),
                SizedBox(height: 10),
                //Text - - Popular Food Nearby
                nasPopularFoodNearby(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
