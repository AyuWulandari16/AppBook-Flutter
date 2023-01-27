import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

/* LIST */
class Movie {
  Movie(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.year});

  final String title;
  final String description;
  final String imageUrl;
  final int year;
}

/* DETAIL PAGE */
class BookDetailScreen extends StatelessWidget {
  final Movie movie;

  BookDetailScreen(this.movie);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // /1/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // /2/
                Container(
                  padding: const EdgeInsets.only(bottom: 0, top: 0),
                  child: const Text(
                    '50 Miles - Seafarer\'s Social Service',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // /3/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('99+'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.add, 'ADD'),
        _buildButtonColumn(color, Icons.book, 'READ'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget detail1 = Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(movie.imageUrl),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    movie.title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 22.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 0,
                  ),
                  child: Text(
                    movie.year.toString(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 17.0,
                        color: Colors.grey),
                  ),
                ),
                titleSection,
                buttonSection,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    movie.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.orange,
      ),
      body: detail1,
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 20),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
