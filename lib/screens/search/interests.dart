import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/search/grid_tile.dart';
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(children: <Widget>[
                Container(
                  height: height * 0.155,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/interests/product_photo.jpg'),
                      )),
                ),
                Stack(
                  // clipBehavior: Clip.none,
                  // overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      color: Colors.blue,
                      height: height * 0.155,
                      width: width * 0.6,
                    ),
                    Positioned(
                      child: Container(
                        color: Colors.red,
                        height: height * 0.05,
                        width: width * 0.1,
                      ),
                    ),
                    Positioned(
                      top: height*0.155-( height * 0.05),
                      child: Container(
                        color: Colors.yellow,
                        height: height * 0.05,
                        width: width * 0.1,
                      ),
                    ),
                    Positioned(
                      //  top: 50,
                      left: width * 0.6 - (height * 0.05),
                      child: Container(
                        color: Colors.green,
                        height: height * 0.05,
                        width: width * 0.1,
                      ),
                    ),
                    Positioned(
                      top: height*0.155-( height * 0.05),
                      left: width * 0.6 - (height * 0.05),
                      child: Container(
                        color: Colors.yellow,
                        height: height * 0.05,
                        width: width * 0.1,
                      ),),
                  ],
                )

]),
            ),
          ],
        ));
  }
}
