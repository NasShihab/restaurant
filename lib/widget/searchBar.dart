import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchBar extends StatefulWidget {
  const searchBar({Key? key}) : super(key: key);

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsetsDirectional.only(start: 15, end: 15),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
              )),
          child: CupertinoSearchTextField(),
        );
  }
}
