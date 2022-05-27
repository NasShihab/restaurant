import 'package:flutter/material.dart';

class nasCategoryList extends StatefulWidget {
  const nasCategoryList({Key? key}) : super(key: key);

  @override
  State<nasCategoryList> createState() => _nasCategoryListState();
}

class _nasCategoryListState extends State<nasCategoryList> {

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
    return Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(end: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 200+ Near around
              Container(
                padding: EdgeInsetsDirectional.only(start: 10),
                child: Text(
                  'Category',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
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
      ],
    );
  }
}
