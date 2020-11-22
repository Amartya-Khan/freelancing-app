import 'package:flutter/material.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingTile extends StatelessWidget {
  const HeadingTile({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)
            ),
          ),
          Positioned(
            bottom: -5,
            // top: 10,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: Colors.deepPurpleAccent.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
