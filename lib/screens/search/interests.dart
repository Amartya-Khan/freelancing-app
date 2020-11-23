import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/search/grid_tile.dart';
import 'package:freelancing_platform/screens/search/interest_tile.dart';
import 'package:freelancing_platform/services/auth.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Interests extends StatefulWidget {
  static String id = 'Interests';

  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final photoSvg = 'assets/icons/photography.svg';
    final gameSvg = 'assets/icons/gaming.svg';
    return Scaffold(
        backgroundColor: bg,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset(
                    photoSvg,
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Photography',
                      style: textStyle.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                        // fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InterestTile(
                height: height,
                width: width,
                service: 'Product Photography',
                seller: 'Walter White',
                imageSrc: 'assets/interests/product_photo.jpg',
                rating: 4.5,
                price: 440),
            InterestTile(
                height: height,
                width: width,
                service: 'Product Photography',
                seller: 'Walter White',
                imageSrc: 'assets/interests/product_photo.jpg',
                rating: 4.5,
                price: 440),
            InterestTile(
                height: height,
                width: width,
                service: 'Product Photography',
                seller: 'Walter White',
                imageSrc: 'assets/interests/product_photo.jpg',
                rating: 4.5,
                price: 440),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset(
                    gameSvg,
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Game resources',
                      style: textStyle.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                        // fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InterestTile(
                height: height,
                width: width,
                service: 'Product Photography',
                seller: 'Walter White',
                imageSrc: 'assets/interests/product_photo.jpg',
                rating: 4.5,
                price: 440),
            InterestTile(
                height: height,
                width: width,
                service: 'Product Photography',
                seller: 'Walter White',
                imageSrc: 'assets/interests/product_photo.jpg',
                rating: 4.5,
                price: 440),
          ],
        ));
  }
}
