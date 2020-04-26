import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_horizontal_list_item.dart';

class RecommendedMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Recomended movies",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FlatButton(
                child: Text('view all'),
                onPressed: () {},
              )
            ],
          ),
        ),
        Container(
          height: 280,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MovieHorizontalListItem(),
              MovieHorizontalListItem(),
              MovieHorizontalListItem(),
            ],
          ),
        )
      ],
    );
  }
}
