import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freelancing_platform/models/personal.dart';
import 'package:freelancing_platform/screens/home/home.dart';
import 'package:freelancing_platform/screens/profile/profile.dart';
import 'package:freelancing_platform/screens/search/explore.dart';
import 'package:freelancing_platform/screens/search/search.dart';
import 'package:freelancing_platform/services/auth.dart';
import 'package:freelancing_platform/services/database.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentHome extends StatefulWidget {
  // Home({Key key}) : super(key: key);
  static String id = 'Parent Home';

  @override
  _ParentHomeState createState() => _ParentHomeState();
}

class _ParentHomeState extends State<ParentHome> {
  final AuthService _auth = AuthService();

  double gap = 10.0;
  int _index = 0;
  PageController controller = PageController();
  var padding = EdgeInsets.symmetric(horizontal: 18, vertical: 5);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return MultiProvider(
      providers: [
        StreamProvider<List<Personal>>.value(
          value: DatabaseService().personalData,
        ),
      ],
      child: Scaffold(
        body: PageView(
            controller: controller,
            onPageChanged: (page) {
              setState(() {
                _index = page;
              });
            },
            children: [
              Home(),
              Explore(),
              Profile(),
            ]),
        bottomNavigationBar:
        
         SafeArea(
           
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            decoration: BoxDecoration(color: Colors.white,
                //borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 60,
                    color: Colors.black.withOpacity(0.4),
                    offset: Offset(0, 25),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              child: GNav(
                // backgroundColor: bg,
                
                
                curve: Curves.easeInOut,
                // duration: Duration(milliseconds: 500),
                tabs: [
                  GButton(
                    gap: gap,
                    icon: Icons.home_outlined,
                    iconColor: Colors.deepPurpleAccent,
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                    backgroundColor: Colors.deepPurpleAccent,
                    text: 'Home',
                    // textStyle: GoogleFonts.montserrat(),
                    iconSize: 24,
                    padding: padding,
                  ),
                  GButton(
                    gap: gap,
                    icon: Icons.explore,
                   iconColor: Colors.deepPurpleAccent,
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                    backgroundColor: Colors.deepPurpleAccent,
                    text: 'Explore',
                  
                    iconSize: 24,
                    padding: padding,
                  ),
                  GButton(
                    gap: gap,
                    icon: Icons.person_outline,
                    iconColor: Colors.deepPurpleAccent,
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                    backgroundColor: Colors.deepPurpleAccent,
                    text: 'Profile',
                    iconSize: 24,
                    padding: padding,
                  ),
                ],
                selectedIndex: _index,
                onTabChange: (index) {
                  setState(() {
                    _index = index;
                  });
                  controller.jumpToPage(index);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
