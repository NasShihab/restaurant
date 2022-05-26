import 'package:flutter/material.dart';

import 'nasRatingBuilder.dart';

class nasPopularFoodNearby extends StatefulWidget {
  const nasPopularFoodNearby({Key? key}) : super(key: key);

  @override
  State<nasPopularFoodNearby> createState() => _nasPopularFoodNearbyState();
}

class _nasPopularFoodNearbyState extends State<nasPopularFoodNearby> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(start: 10),
              child: Text(
                'Popular Food Nearby',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
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
                                        nasRatingBuilder(),
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
    );
  }
}
