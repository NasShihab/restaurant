import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nasSearchBar extends StatefulWidget {
  const nasSearchBar({Key? key}) : super(key: key);

  @override
  State<nasSearchBar> createState() => _nasSearchBarState();
}

class _nasSearchBarState extends State<nasSearchBar> {
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
