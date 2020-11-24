import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/notifications/notification_tile.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);
  static String id = "Notifications Page";

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
          backgroundColor: bg,
          // .withBlue(250)
          // .withGreen(250)
          // .withRed(250),
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 0,
            title: Text(
              'Notifications',
              style: GoogleFonts.montserrat(),
            ),
            // actions: <Widget>[
            //   NotificationButton(),
            // ],
          ),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NotificationTile(screen: screen),
              ),
            ],
          )),
    );
  }
}

