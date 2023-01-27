import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// GRID

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.todo}) : super(key: key);

  // Declare a field that holds the Todo.
  final Todo todo;

  static List<String> bookname = [
    'Sejarah Book',
    'Novel By Boy Candra',
    'Social Book',
    'Psychonology Book',
    'Programming Book'
  ];

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(todo.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(1),
          children: [
            Image.asset(
              todo.description,
              width: 600, height: 240,
              // fit: BoxFit.cover
            ),
            Text(
              'A book is a medium for recording information in the form of writing or images, typically composed of many pages (made of papyrus, parchment, vellum, or paper) bound together and protected by a cover.[1] The technical term for this physical arrangement is codex (plural, codices). In the history of hand-held physical supports for extended written compositions or records, the codex replaces its predecessor, the scroll. A single sheet in a codex is a leaf and each side of a leaf is a page.',
              softWrap: true,
              textAlign: TextAlign.justify,
            )
          ],
        ));
  }
}
// =========