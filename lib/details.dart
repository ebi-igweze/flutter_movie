import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/data/movie.dart';

class MovieDetails extends StatelessWidget {
  static const routeName = "/movie-details";

  @override
  Widget build(BuildContext context) {
    var arguments =
        ModalRoute.of(context).settings.arguments as Map<String, Movie>;
    final movie = arguments['movie'];

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF5F5F5),
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Hero(
                tag: movie.id,
                child: _MovieImage(
                  imageUrl: movie.imageUrl,
                ),
              ),
            ),
            Center(
              child: _MovieTitle(
                title: movie.title,
              ),
            ),
            _MovieActionButtons(
              movie: movie,
            ),
            _MovieDescription(
              description: movie.description,
            ),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNav(),
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
        height: 400,
        width: 266,
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
  final String title;

  _MovieTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _MovieActionButtons extends StatelessWidget {
  final Movie movie;

  _MovieActionButtons({this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: _MovieActionButton(
                icon: Icons.timelapse,
                title: movie.duration,
              ),
            ),
            Card(
              child: _MovieActionButton(
                icon: Icons.calendar_today,
                title: movie.year,
              ),
            ),
            Card(
              child: _MovieActionButton(
                icon: Icons.star,
                title: "${movie.rating}/10",
              ),
            ),
          ],
        ));
  }
}

class _MovieActionButton extends StatelessWidget {
  final IconData icon;
  final String title;

  _MovieActionButton({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Column(
        children: <Widget>[
          Center(
            child: IconButton(
              icon: Icon(icon),
            ),
          ),
          Center(
            child: Text(title),
          ),
        ],
      ),
    );
  }
}

class _MovieDescription extends StatelessWidget {
  final String description;

  _MovieDescription({this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: RaisedButton(
            child: Text("Watch Trailer"),
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            color: Colors.indigo,
            textColor: Colors.white,
            onPressed: () {},
          ),
        ),
        Expanded(
          child: RaisedButton(
            child: Text("Buy Movie"),
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            color: Colors.amberAccent,
            textColor: Colors.black,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
