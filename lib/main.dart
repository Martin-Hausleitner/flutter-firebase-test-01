import 'package:app/post.dart';
import 'package:app/post/category_badge.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // change the font to inter
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
        
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Locoo'),
        ),
        body: ListView(
          children: const [
            Post(
              postTitle: 'Post Title',
              postImage: 'https://i.pravatar.cc/303',
              postCategory: Category.mitteilung,
              postAuthorName: 'John Doe',
              postPublishDate: '2',
              postDistance: '1',
              postDescription: 'Post Dddddescrisssption',
            ),
            Post(
              postTitle: 'Post Title',
              postDistance: '1',
            ),
            Post(
              postTitle: 'Post Title',
              postImage: 'https://i.pravatar.cc/303',
              postAuthorName: 'John Doe',
              postPublishDate: '2',
              postDistance: '1',
              postDescription:
                  'Post https://pub.dev/packages/expandable_text Dddddescrdfffffffffffffffdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfffffffffffffffffffffffffffffffffffffffffisf dddddddddddsdffffffffffffsdfffffdddption',
            ),
          ],
        ));
  }
}
