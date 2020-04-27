import 'package:flutter/material.dart';
import 'package:movie_app/data/movie.dart';
import 'package:movie_app/widgets/movie_horizontal_list_item.dart';
import 'package:provider/provider.dart';

class RecommendedMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movies = Provider.of<MovieData>(context).recommendedMovies;

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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (ctx, index) => MovieHorizontalListItem(
              movieItem: movies[index],
            ),
          ),
        )
      ],
    );
  }
}
