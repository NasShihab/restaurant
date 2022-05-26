import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

class ooClass extends StatefulWidget {
  const ooClass({Key? key}) : super(key: key);

  @override
  State<ooClass> createState() => _ooClassState();
}

class _ooClassState extends State<ooClass> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        starRating(),
        SizedBox(width: 5,),
        Text('$rating'),
      ],
    );
  }

  Widget starRating() => RatingBar.builder(
      updateOnDrag: true,
      minRating: 1,
      itemSize: 13,
      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
      onRatingUpdate: (rating) {
        setState(() {
          this.rating = rating;
        });
      });
}
