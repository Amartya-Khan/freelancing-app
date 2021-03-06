import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/search/interests.dart';
import 'package:freelancing_platform/screens/search/search.dart';
import 'package:freelancing_platform/services/auth.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:freelancing_platform/widgets/notification_button.dart';
import 'package:google_fonts/google_fonts.dart';


class Explore extends StatefulWidget {
  static String id = 'Explore';

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
          child: Scaffold(
          backgroundColor: bg,
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            title: Text(
              'Explore',
              style: GoogleFonts.montserrat(),
            ),
             bottom: TabBar(
               indicatorColor: Colors.white,
               labelStyle: montserrat,
              unselectedLabelStyle: TextStyle(),
                tabs: [
                  Tab(text: "All categories", ),
                  Tab(text: "Your interests"),
                ],
              ),
            actions: <Widget>[
              NotificationButton()
            ],
          ),
          body:  TabBarView(
              children: [
               Search(),
                Interests(),
              
              ],
            ), ),
    );
  }
}

