import 'package:flutter/material.dart';
import 'package:movie_app/data/movie.dart';
import 'package:movie_app/widgets/movie_horizontal_list_item.dart';
import 'package:provider/provider.dart';

class PopularMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _PopularMoviesTitle(),
        _PopularMovieList(),
      ],
    );
  }
}

class _PopularMoviesTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Popular movies",
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
    );
  }
}

class _PopularMovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movies = Provider.of<MovieData>(context).popularMovies;

    return Container(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (ctx, index) => MovieHorizontalListItem(
          movieItem: movies[index],
        ),
      ),
    );
  }
}
