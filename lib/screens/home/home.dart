import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/home/featured_gigs.dart';
import 'package:freelancing_platform/screens/home/header_with_search.dart';
import 'package:freelancing_platform/screens/home/popular_services.dart';
import 'package:freelancing_platform/services/auth.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:freelancing_platform/widgets/heading_tile.dart';
import 'package:freelancing_platform/widgets/notification_button.dart';
import 'package:freelancing_platform/widgets/tile_with_more_button.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  static String id = 'Home';

 

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

   jobPostDialog(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController detailController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Write details about new job post'),
            content: TextField(
              controller: titleController,
            ),
            actions: [
              MaterialButton(
                onPressed: () {},
                elevation: 5.0,
                child: Text('Submit'),
              ),
            ],
          );
        });
  }

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
            NotificationButton(),
          ],
        ),
        body: ListView(
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(
              title: "Popular Services",
              press: () {},
            ),
            PopularServices(),
            HeadingTile(title: "Last Viewed"),
            PopularServices(),
            TitleWithMoreBtn(
              title: "Featured Gigs",
              press: () {},
            ),
            FeaturedGigs(),
            SizedBox(
              height: size.height * 0.01,
            ),
            HeadingTile(title: "Couldn't find what you were "),
            HeadingTile(title: "looking for?"),
            SizedBox(
              height: size.height * 0.01,
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  jobPostDialog(context);
                },
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Make a new job posting',
                    style: montserrat,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
          ],
        ));
  }
}
