import 'package:flutter/material.dart';

class MovieVerticalListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 10,
          child: Row(
            children: <Widget>[
              _MovieImage(),
              _MovieTitleAndDescription(),
            ],
          ),
        ),
      ],
    );
  }
}

class _MovieImage extends StatelessWidget {
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
            "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SX300.jpg",
          ),
        ),
      ),
    );
  }
}

class _MovieTitleAndDescription extends StatelessWidget {
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
            "Avengers Endgame",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          // description
          Container(
            width: 240,
            child: Text(
              'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse...',
            ),
          ),
        ],
      ),
    );
  }
}
