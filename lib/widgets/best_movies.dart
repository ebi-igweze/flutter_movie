import 'package:flutter/material.dart';
import 'package:movie_app/data/movie.dart';
import 'package:movie_app/widgets/movie_vertical_list_item.dart';
import 'package:provider/provider.dart';

class BestMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movies = Provider.of<MovieData>(context).bestMovies;

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
          height: 500,
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.only(bottom: 10.0),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: movies.length,
            itemBuilder: (ctx, index) => MovieVerticalListItem(
              movieItem: movies[index],
            ),
          ),
        ),
      ],
    );
  }
}
