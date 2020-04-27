import 'package:flutter/material.dart';
import 'package:movie_app/data/movie.dart';
import 'package:movie_app/details.dart';

class MovieVerticalListItem extends StatelessWidget {
  final Movie movieItem;

  MovieVerticalListItem({this.movieItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        MovieDetails.routeName,
        arguments: {
          'movie': movieItem,
        },
      ),
      child: Column(
        key: Key(movieItem.title),
        children: <Widget>[
          Card(
            elevation: 5,
            margin: EdgeInsets.only(bottom: 15),
            child: Row(
              children: <Widget>[
                Hero(
                  tag: movieItem.id,
                  child: _MovieImage(
                    imageUrl: movieItem.imageUrl,
                  ),
                ),
                _MovieTitleAndDescription(
                  movieTitle: movieItem.title,
                  movieDescription: movieItem.description,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MovieImage extends StatelessWidget {
  final String imageUrl;

  _MovieImage({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}

class _MovieTitleAndDescription extends StatelessWidget {
  final String movieTitle;
  final String movieDescription;

  _MovieTitleAndDescription({
    this.movieTitle,
    this.movieDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // title
          Text(
            movieTitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          // description
          Container(
            width: 240,
            child: Text(movieDescription),
          ),
        ],
      ),
    );
  }
}
