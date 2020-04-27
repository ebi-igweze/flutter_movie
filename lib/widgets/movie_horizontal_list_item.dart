import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/data/movie.dart';
import 'package:movie_app/details.dart';

class MovieHorizontalListItem extends StatelessWidget {
  final Movie movieItem;

  MovieHorizontalListItem({this.movieItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        MovieDetails.routeName,
        arguments: {
          'movie': movieItem,
        },
      ),
      child: Container(
        key: Key(movieItem.title),
        width: 160,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            // movie cover image
            Hero(
              tag: movieItem.id,
              child: _MovieImage(
                imageUrl: movieItem.imageUrl,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // movie title
            _MovieTitle(
              movieTitle: movieItem.title,
            )
          ],
        ),
      ),
    );
  }
}

class _MovieImage extends StatelessWidget {
  final String imageUrl;

  _MovieImage({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}

class _MovieTitle extends StatelessWidget {
  final String movieTitle;

  _MovieTitle({this.movieTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      movieTitle,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
