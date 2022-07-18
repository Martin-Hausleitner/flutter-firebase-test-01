//import material
import 'package:app/post/category_badge.dart';
import 'package:app/post/hashtag_badge.dart';
import 'package:app/post_button.dart';
import 'package:app/post/post_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//create a new class called Post which extends StatelessWidget which is Container with infinty and a decortion box with borderradius

class Post extends StatelessWidget {
  final String postTitle;
  final Category postCategory;
  final List<String> postHashtags;
  final String postAuthorImage;
  final String postAuthorName;
  final String postPublishDate;

  final String postDistance;
  final String postImage;
  final String postDescription;
  final int postLikes;

  const Post({
    Key? key,
    required this.postTitle,
    this.postCategory = Category.Mitteilung,
    this.postHashtags = const [
      'test',
      'test2',
      'test3',
      'test4',
      'test5',
      'test6',
    ],
    this.postAuthorImage = 'https://i.pravatar.cc/340',
    this.postAuthorName = 'ffffgggggggklljdsffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdsfj',
    this.postPublishDate = '3',
    this.postDistance = '300',
    this.postImage = 'https://i.pravatar.cc/300',
    this.postDescription =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    this.postLikes = 0,
  }) : super(key: key);

  // set the default value for postTitle

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
                      // use postTitle as text and a default value of 'Titel'
                      postTitle,
                      style: GoogleFonts.inter(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                //Create a row with left alignment and a child of two widgets
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CategoryBadge(
                      category: postCategory,
                    ),

                    //return a text with a fontSize of 12 with a fontWeight of FontWeight.w600 and a color of Colors.black and a child of Text with a text of 'New'
                    //fit width
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        
                        child: Row(
                          // align left
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // hashtagbadges as child with postHashtags as argument
                            HashtagBadges(hashtags: postHashtags),

                            // render a list HashtagBadge of with a list of hashtags
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // add a Row with 3 PostHashtagBadge widgets beginning on the left with a space between them of 10

                PostProfile(
                  authorImage: postAuthorImage,
                  authorName: postAuthorName,
                  publishDate: postPublishDate,
                  distance: postDistance,
                ),
                // add a Text with padding top 10 fontwight normal and fontsize 14
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    postDescription,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(216, 0, 0, 0),
                    ),
                  ),
                ),

                //create a flex row with one child having 20% of the width of the screen and a child of a PostButton with a text of 'Like' and a onPressed function
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 20,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 80,
                      child: PostButton(
                      ),
                    ),
                  ],
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
