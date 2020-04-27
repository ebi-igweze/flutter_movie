import 'package:flutter/material.dart';
import 'package:movie_app/details.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        backgroundColor: Colors.white,
      ),
      home: MyHomePage(title: 'Movies X'),
      routes: {
        MovieDetails.routeName: (ctx) => MovieDetails(),
      },
    );
  }
}
