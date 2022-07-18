// create a PostButton class that extends StatelessWidget which contains a IconButton

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundIconButton  extends StatelessWidget {
  // Icon
  final IconData icon;
  final String text;

  const RoundIconButton({Key? key, required this.icon, this.text = '0'})
      : super(key: key);

  //Create a Contianer with a gray thin broder and inside a IconButton with a Icon and a onPressed function
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 226, 226, 226),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
            icon: // use icon var
                Icon(
              icon,
            ),
            iconSize: 18,
            color: Colors.black,
            focusColor: Colors.brown,
            hoverColor: Colors.red,
            padding: const EdgeInsets.all(0),
            onPressed: () {},
          ),
        ),
        // add small text
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }
}

// create a PostButton 2 extents state with aButton which change to Red when pressed
