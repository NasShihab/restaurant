import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

class nasRatingBuilder extends StatefulWidget {
  const nasRatingBuilder({Key? key}) : super(key: key);

  @override
  State<nasRatingBuilder> createState() => _nasRatingBuilderState();
}

class _nasRatingBuilderState extends State<nasRatingBuilder> {
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
      itemSize: 17,
      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
      onRatingUpdate: (rating) {
        setState(() {
          this.rating = rating;
        });
      });
}
