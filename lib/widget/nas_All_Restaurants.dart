import 'package:flutter/material.dart';
import 'package:restaurant/widget/nasRatingBuilder.dart';

class nas_All_Restaurants extends StatelessWidget {
  const nas_All_Restaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final leadingImage = [
      'images/logo/logo2.png',
      'images/logo/logo2.png',
      'images/logo/logo2.png',
      'images/logo/logo2.png',
      'images/logo/logo2.png',
    ];

    List title = [
      'Burger1',
      'Pizza',
      'Sandwitch',
      'Noodles',
      'CocaCola'
    ];

    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(start: 10),
                  child: Text(
                    'All Restaurants',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.only( end: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 200+ Near around
                  Container(
                    padding: EdgeInsetsDirectional.only(start: 10),
                    child: Text(
                      '200+ Near You',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Icon(Icons.menu, size: 24),
                ],
              ),
            ),
            SizedBox(height: 10),

          ],
        ),
        Container(
          height: 210,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: title.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    ListTile(
                      title: Text('${title[index]}'),
                      leading: Image.asset('${leadingImage[index]}'),
                      trailing: Icon(Icons.favorite_border),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Text('Mc Donald, New Yourk, USA'),
                            ],
                          ),
                          nasRatingBuilder(

                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                );
          }),
        ),
      ],
    );
  }
}
