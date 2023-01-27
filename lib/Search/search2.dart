import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/search_model.dart';

class search2 extends StatelessWidget {
  List<Movie> movieList = [
    Movie(
        imageUrl:
            'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        title: "Sejarah Book",
        description:
            "History is narratives. From chaos comes order. We seek to understand the past by determining and ordering ‘facts’; and from these narratives we hope to explain the decisions and processes which shape our existence. Perhaps we might even distill patterns and lessons to guide – but never to determine – our responses to the challenges faced today. History is the study of people, actions, decisions, interactions and behaviours. It is so compelling a subject because it encapsulates themes which expose the human condition in all of its guises and that resonate throughout time:",
        year: 1994),
    Movie(
        imageUrl:
            'https://images.unsplash.com/photo-1491841573634-28140fc7ced7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        title: "Social Book",
        description:
            "Social Book, created by the Institute for the Future of the Book, is a social reading platform that allows reader to add their own commentary to texts, share these ideas with others, follow others' comments, and create communities of interactive reader/writers. Open Utopia is a pilot project of Social Book.",
        year: 2000),
    Movie(
        imageUrl:
            'https://images.unsplash.com/photo-1599495054627-35ad07218a46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bm92ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        title: "Programming Book",
        description:
            "Reading books is a great way to improve your programming, but reading alone is rarely enough. You have to be willing change the way you think, not just willing to learn a few new tricks or good anecdotes. It takes time and effort to learn how to program really well (though anyone can learn the basics quickly).",
        year: 1999),
    Movie(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXXKTCPbTZ9z3fH_Ux8fpcrsXMf8epX6dk-w&usqp=CAU',
        title: "Novel By Boy Candra",
        description:
            "Boy Candra is a man born in West Sumatra, November 21, 1989. The author of After the Rain Abandon was once very active in organizing. One of the organizations he is involved in is the Communications and Radio Organization. He has been writing regularly on his blog, rasalelaki.blogspot.com. The man who started writing in 2011 not only likes to write romance stories, he also likes to write poetry.",
        year: 2019),
    Movie(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSCWHG8RIXIbMdPhp2QNEdWO52KsTaNlo15w&usqp=CAU',
        title: "Cerita Dongeng",
        description:
            "Filling time at home with children, can be filled by reading fairy tales. By reading children's fairy tales, Mama has indirectly taught children the moral values obtained from the story. Fairy tales are also usually told before the child goes to bed. This can be a bonding time between parents and children. Telling stories about children's fairy tales is also a form of stimulation so that children become smarter in language. There are various kinds of fairy tales that you can choose from, one of which is a fable type story that tells about the lives of animals.",
        year: 2004),
    Movie(
        imageUrl:
            'https://images.unsplash.com/photo-1614544048536-0d28caf77f41?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bm92ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        title: "Psychonology Book",
        description:
            "The Psychology Book is your visual guide to the complex and fascinating world of human behavior. Discover how we learn, become emotionally bonded with others, and develop coping mechanisms to deal with adversity, or conform in a group. Get to know key thinkers, from Freud and Jung to Elizabeth Loftus and Melanie Klein, and follow charts and timelines to make sense of it all and see how one theory influenced another. With concise explanations of different schools of psychology including psychotherapy, cognitive psychology and behaviorism, this is an ideal reference whether you're a student, or a general reader. It's your authoritative guide to over 100 key ideas, theories and conditions, including the collective unconscious, the 'selfish' gene, false memory, psychiatric disorders, and autism.",
        year: 1985),
    Movie(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5YrfIQ5j1LEYl7NgGwx_EwdDxd7X-fHLbIg&usqp=CAU',
        title: "Pascal programming Language Book",
        description:
            "Pascal is a structured programming language, which means that the programming language can be broken down into small functions that can be used repeatedly.",
        year: 2015),
    Movie(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRth2A1T2tsMQIzE3bnau8wovfbCEhsRCp1yw&usqp=CAU',
        title: "Novel by Ayu Wulandari",
        description:
            "A book is a medium for recording information in the form of writing or images, typically composed of many pages (made of papyrus, parchment, vellum, or paper) bound together and protected by a cover.[1] The technical term for this physical arrangement is codex (plural, codices). In the history of hand-held physical supports for extended written compositions or records, the codex replaces its predecessor, the scroll. A single sheet in a codex is a leaf and each side of a leaf is a page.",
        year: 2015),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Telusuri",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Container(
              height: 50,
              // margin: EdgeInsets.only(left: 25, right: 25, top: 18),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Colors.grey.shade200),
              child: Stack(
                children: <Widget>[
                  TextField(
                    // maxLengthEnforced: true,
                    style: GoogleFonts.openSans(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 50, right: 50, bottom: 0),
                        border: InputBorder.none,
                        hintText:
                            'Telusuri cerita, orang, atau daftar bacaan..',
                        hintStyle: GoogleFonts.openSans(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600)),
                  ),
                  Positioned(
                    top: 13,
                    // right: 15,
                    left: 15,
                    child: SvgPicture.asset(
                      'assets/icons/icon_search_white.svg',
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: movieList.length,
                itemBuilder: (context, index) {
                  Movie movie = movieList[index];
                  return Card(
                      child: ListTile(
                    title: Text(movie.title),
                    subtitle: Text(movie.year.toString()),
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 125,
                        maxHeight: 125,
                      ),
                      child: Image.network(movie.imageUrl, fit: BoxFit.cover),
                    ),
                    isThreeLine: true,
                    // leading: Image.network(movie.imageUrl),
                    trailing: Icon(Icons.more_vert),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BookDetailScreen(movie)));
                    },
                  ));
                },
                padding: EdgeInsets.all(10),
              ),
            )
          ],
        )));
  }
}
