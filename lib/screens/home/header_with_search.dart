import 'package:flutter/material.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),

      // It will cover 20% of our total height

      height: size.height * 0.2,

      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.19 - 27,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'FreelanceIt',
                  style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(top:11.5, left: 4),
                  child: Container(
                    height: 11,
                    width: 11,
                    decoration: BoxDecoration(color: Colors.deepPurpleAccent.withBlue(250).withGreen(10).withRed(100), shape: BoxShape.circle),),
                )
                
                //  Spacer(),
                // SvgPicture.asset('assets/logo-clock.svg', width: 200,),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.deepPurpleAccent.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",

                        hintStyle: GoogleFonts.montserrat(textStyle: TextStyle(
                          color: Colors.deepPurpleAccent.withOpacity(0.5),
                        ),),
                        

                        enabledBorder: InputBorder.none,

                        focusedBorder: InputBorder.none,

                        // surffix isn't working properly  with SVG

                        // thats why we use row

                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  // Icon(Icons.search)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
