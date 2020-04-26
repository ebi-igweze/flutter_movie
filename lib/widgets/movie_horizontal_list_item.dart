import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieHorizontalListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          // movie cover image
          _MovieImage(),

          SizedBox(
            height: 10,
          ),

          // movie title
          _MovieTitle()
        ],
      ),
    );
  }
}

class _MovieImage extends StatelessWidget {
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
            image: NetworkImage(
                "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SX300.jpg"),
          ),
        ),
      ),
    );
  }
}

class _MovieTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Infinity War",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
