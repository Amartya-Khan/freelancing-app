import 'package:flutter/material.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),


      height: size.height * 0.14,

      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              // bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.13 - 27,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: 
                Column(
                  children: [
                    
                    Center(
                                      child: Text(
                        'Initial data is placeholder',
                        style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Center(
                                      child: Text(
                        'Editing that saves your data to our database',
                        style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400)),
                      ),
                    ),
                    // SizedBox(height: size.height*0.02),
                  ],
                ),
          ),
         
        ],
      ),
    );
  }
}
