import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:auto_size_text/auto_size_text.dart';

class InterestTile extends StatelessWidget {
  const InterestTile({
    Key key,
    @required this.height,
    @required this.width,
    this.price,
    this.rating,
    this.seller,
    this.service,
    this.imageSrc,
  }) : super(key: key);

  final double height;
  final double width;
  final String service, seller, imageSrc;
  final double rating, price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(children: <Widget>[
        Container(
          height: height * 0.155,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                // image: AssetImage('assets/interests/product_photo.jpg'),
                image: AssetImage('$imageSrc'),
              )),
        ),
        Spacer(),
        Stack(
          // clipBehavior: Clip.none,
          // overflow: Overflow.visible,
          children: <Widget>[
            Container(
              color: Colors.transparent,
              height: height * 0.155,
              width: width * 0.62,
            ),
            Positioned(
              top: 10,
              child: Container(
                color: Colors.transparent,
                height: height * 0.09,
                width: width * 0.37,
                child: AutoSizeText(
                  // 'Product Photography',
                  '$service',
                  maxLines: 2,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    // color: Colors.deepPurpleAccent,
                    fontSize: 16,
                  )),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: width * 0.62 - (width * 0.25),
              child: Container(
                color: Colors.transparent,
                height: height * 0.025,
                width: width * 0.25,
                child: AutoSizeText(
                  // 'Walter White',
                  '$seller',
                  maxLines: 2,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    fontSize: 13.5,
                  )),
                ),
              ),
            ),
            Positioned(
              top: height * 0.155 - (width * 0.064) - 10,
              child: Container(
                color: Colors.transparent,
                height: width * 0.064,
                width: width * 0.32,
                child: SmoothStarRating(
                    allowHalfRating: true,
                    onRated: (v) {},
                    starCount: 5,
                    rating: rating,
                    size: width * 0.064,
                    isReadOnly: true,
                    // fullRatedIconData: Icons.blur_off,
                    // halfRatedIconData: Icons.blur_on,
                    color: Colors.deepPurpleAccent,
                    borderColor: Colors.deepPurpleAccent,
                    spacing: 0.0),
              ),
            ),
            Positioned(
              top: height * 0.155 - (height * 0.036) - 10,
              left: width * 0.62 - (width * 0.18),
              child: Container(
                color: Colors.transparent,
                height: height * 0.036,
                width: width * 0.19,
                child: AutoSizeText(
                  "\$$price",
                  maxLines: 2,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepPurpleAccent)),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
