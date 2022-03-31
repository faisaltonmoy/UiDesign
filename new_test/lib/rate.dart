import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final int rating;

  const RatingBar({ Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisSize: MainAxisSize.min,
      children:List.generate(
        rating, 
        (index) {
          return Row(
            children: <Widget>[
              Icon(
                Icons.star,
                color: Color(0xFFfad05f),
                size: 12,
              ),
            ],
          );
        }),
    );
  }
}