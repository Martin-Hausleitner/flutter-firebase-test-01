// create a PostBadge class with a blue badge and text 'New'

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostHashtagBadge extends StatelessWidget {
  const PostHashtagBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: //right 10
          const EdgeInsets.only(right: 6, bottom: 10),
      child: Container(
        // return a text with a gray border with rounded corners and a padding left 5 right 5
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 207, 207, 207),
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        // return a text with a fontSize of 12 with a fontWeight of FontWeight.w600 and a color of Colors.white and a child of Text with a text of 'New'
        child: Text(
          '#Bormaschine',
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          // return a text with a fontSize of 12 with a fontWeight of FontWeight.w600 and a color of Colors.white and a child of Text with a text of 'New'
        ),
      ),
    );
  }
}
