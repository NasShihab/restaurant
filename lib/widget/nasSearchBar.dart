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
      padding: EdgeInsetsDirectional.only(start: 10, end: 10),
      child: CupertinoSearchTextField(
        decoration: BoxDecoration(border: Border.all(color: Colors.green)),
        placeholder: 'Nas Shihab s',
        suffixMode: OverlayVisibilityMode.always,
        suffixIcon: Icon(CupertinoIcons.search),
      ),
    );
  }
}
