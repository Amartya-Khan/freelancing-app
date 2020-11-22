import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/home/featured_gigs.dart';
import 'package:freelancing_platform/screens/home/header_with_search.dart';
import 'package:freelancing_platform/screens/home/popular_services.dart';
import 'package:freelancing_platform/services/auth.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:freelancing_platform/widgets/heading_tile.dart';
import 'package:freelancing_platform/widgets/tile_with_more_button.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  static String id = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0,
          // title: Text(
          //   'Home',
          //   style: GoogleFonts.montserrat(),
          // ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                child:
                    Tooltip(child: Icon(Icons.exit_to_app), message: "Logout"),
                onTap: () => _auth.signOut(),
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[

            HeaderWithSearchBox(size: size),
            
            TitleWithMoreBtn(title: "Popular Services", press: (){},),
            PopularServices(),
            HeadingTile(title: "Last Viewed"),
            PopularServices(),
            TitleWithMoreBtn(title: "Featured Gigs", press: (){},),
            FeaturedGigs(),
            ],
        ));
  }
}
