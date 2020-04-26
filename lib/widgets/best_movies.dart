import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_vertical_list_item.dart';

class BestMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          MovieVerticalListItem(),
          MovieVerticalListItem(),
          MovieVerticalListItem(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
