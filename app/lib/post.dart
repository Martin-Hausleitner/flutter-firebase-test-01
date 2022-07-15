//import material
import 'package:app/post/category_badge.dart';
import 'package:app/post/hashtag_badge.dart';
import 'package:app/post_badge.dart';
import 'package:app/post_button.dart';
import 'package:app/post_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//create a new class called Post which extends StatelessWidget which is Container with infinty and a decortion box with borderradius

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
      ),
      //create two text children
      child: Column(
        children: <Widget>[
          // set a left padding 18 with 2 text children
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
            child: Column(
              children: <Widget>[
                Padding(
                  //paddting bottom 10
                  padding: const EdgeInsets.only(bottom: 10),
                  //align left
                  child: Align(
                    alignment: Alignment.centerLeft,
                    //return a text with a fontSize of 12 with a fontWeight of FontWeight.w600 and a color of Colors.black and a child of Text with a text of 'New'
                    child: Text(
                      'Post Title',
                      style: GoogleFonts.inter(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // add a Row with 3 PostHashtagBadge widgets beginning on the left with a space between them of 10
                Row(
                  children: <Widget>[
                    //DetailScreen(title: 'title'),
                    CategoryBadge(category: Category.Mitteilung),
                    //show HashtagBadges with a list oft text
                    HashtagBadges(text: ['tdesssxt', 'tdesssxt', 'tdesssxt', 'tdesssxt', 'tdesssxt']),
                  ],
                ),

                PostProfile(),
                // add a Text with padding top 10 fontwight normal and fontsize 14
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(216, 0, 0, 0),
                    ),
                  ),
                ),
                Padding(
                  padding: //bottom 18
                      const EdgeInsets.only(bottom: 18),
                  child: Row(
                    children: [
                      PostButton(),
                      PostButton(),
                      PostButton(),
                    ],
                  ),
                ),

                // set a width of 200 with a height of 20 with a fontSize of 14 with a fontWeight of FontWeight.w600 and a color of Colors.white and a child of Text with a text of 'Rick A.'
              ],
            ),
          ),
        ],
      ),
    );
  }
}
