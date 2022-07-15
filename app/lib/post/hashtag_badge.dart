// create a PostBadge class with a blue badge and text 'New'

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//create a class called hastagbadges which inputs a array of text and display it as a row of hashtagsBadge
class HashtagBadges extends StatelessWidget {
  //display a row of hashtagsBadge and when is overflow the row will be scrollable
  final List<String> hashtags;

  const HashtagBadges({Key? key, required this.hashtags}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        //when the array is empty return a empty container
        children: hashtags.isEmpty
            ? []
            : [
                //when the array is not empty return a row of hashtagsBadge
                for (final hashtag in hashtags)
                  //return a hashtagBadge with a text of the hashtag
                  HashtagBadge(
                    text: hashtag,
                  ),
              ],
      ),
    );
  }


}

class HashtagBadge extends StatelessWidget {
  final String text;
  const HashtagBadge({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6, bottom: 10),
      child: Container(
        padding: const EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 207, 207, 207),
            width: 0.8,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          '#$text',
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

//create a stateful widget badge with contrscuter final string text
