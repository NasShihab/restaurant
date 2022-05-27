import 'package:flutter/material.dart';

import 'nasRatingBuilder.dart';

class nas_Popular_Restaurant extends StatelessWidget {
  const nas_Popular_Restaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text -- Food Campaign
        Container(
          margin: EdgeInsetsDirectional.only( end: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 200+ Near around
              Container(
                padding: EdgeInsetsDirectional.only(start: 10),
                child: Text(
                  'Popular Restaurants',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text('View All', style: TextStyle(
                decoration: TextDecoration.underline, fontWeight: FontWeight.bold,
                color: Colors.amber
              ),),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsetsDirectional.only(start: 5),
          height: 250,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsetsDirectional.only(start: 5, end: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 250,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.purple)),
                            child: Column(
                              children: [
                                // image
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(15)),
                                    child:
                                    Image.asset('images/restro4.jpg'),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 5, top: 10, bottom: 5, end: 5),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          child: Text(
                                            'Burger',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          child: Text(
                                            'Mc Donald, New Yourk, USA',
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      // Rating
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Container(
                                              child: nasRatingBuilder(),
                                            ),
                                            SizedBox(width: 5),
                                            Text('\(2\)'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
