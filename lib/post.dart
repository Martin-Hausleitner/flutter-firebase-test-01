//import material
import 'package:app/post/action_bar.dart';
import 'package:app/shared/button.dart';
import 'package:app/post/category_badge.dart';
import 'package:app/post/hashtag_badges.dart';
import 'package:app/post/post_profile.dart';
import 'package:app/shared/round_icon_button.dart';
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
    this.postCategory = Category.suche,
    this.postHashtags = const [
      'test',
      'test2',
      'test3',
      'test4',
      'test5',
      'test6',
    ],
    this.postAuthorImage = 'https://i.pravatar.cc/340',
    this.postAuthorName =
        'ffffgggggggklljdsffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdsfj',
    this.postPublishDate = '3',
    this.postDistance = '300',
    this.postImage = '',
    this.postDescription =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    this.postLikes = 0,
  }) : super(key: key);

  // set the default value for postTitle

  @override
  Widget build(BuildContext context) {
    const double spacingBetween = 15;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
      ),
      //create two text children
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: <Widget>[
            // Post title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                postTitle,
                //chnage the space between the words
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  //change the space bettwene the letters
                  letterSpacing: -0.4,

                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: spacingBetween),

            // Badges
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // Category Badge
                CategoryBadge(
                  category: postCategory,
                ),

                // Hashtag Badges
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HashtagBadges(hashtags: postHashtags),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: spacingBetween),

            // Post Profile
            PostProfile(
              authorImage: postAuthorImage,
              authorName: postAuthorName,
              publishDate: postPublishDate,
              distance: postDistance,
            ),

            const SizedBox(height: spacingBetween),

            // Post Description
            Stack(
              alignment: const Alignment(1, 1),
              children: [
                Text(
                  postDescription,
                  maxLines: 4,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(144, 221, 221, 221),
                        Colors.white,
                        Colors.blue,
                      ],
                    ),
                  ),
                  child: const Text(
                    'Read More',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            //when the catogory is Suche the button2 is visible

            // place a dark green button with a text "anschreiben" and a comment icon on the left side of the button

            // Post Image
            postImage != ''
                ? Padding(
                    padding: const EdgeInsets.only(top: spacingBetween),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: Image.network(
                          postImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                : Container(),

            // Button
            if (postCategory == Category.suche)
              const Padding(
                padding: EdgeInsets.only(top: spacingBetween),
                child: Button2(
                  text: 'Anschreiben',
                ),
              ),

            const SizedBox(height: spacingBetween),

            // Action Bar
            const ActionBar(),
          ],
        ),
      ),
    );
  }
}