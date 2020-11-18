import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freelancing_platform/models/personal.dart';
import 'package:freelancing_platform/screens/profile/profile.dart';
import 'package:freelancing_platform/services/auth.dart';
import 'package:freelancing_platform/services/database.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  // Home({Key key}) : super(key: key);
  static String id = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Container(
            color: Colors.amber,
              ),
              Container(color: Colors.blueGrey,),
              Profile(),
            ]),
        bottomNavigationBar: SafeArea(
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
                curve: Curves.easeInOut,
                // duration: Duration(milliseconds: 500),
                tabs: [
                  GButton(
                    gap: gap,
                    icon: Icons.filter,
                    iconColor: Colors.black,
                    iconActiveColor: Colors.deepPurpleAccent,
                    text: 'Medical records',
                    textColor: Colors.deepPurpleAccent,
                    backgroundColor: darkGrey.withAlpha(150),
                    iconSize: 24,
                    padding: padding,
                  ),
                  GButton(
                    gap: gap,
                    icon: Icons.edit,
                    iconColor: Colors.black,
                    iconActiveColor: Colors.deepPurpleAccent,
                    text: 'Test selection',
                    textColor: Colors.deepPurpleAccent,
                    backgroundColor:darkGrey.withAlpha(150),
                    iconSize: 24,
                    padding: padding,
                  ),
                  GButton(
                    gap: gap,
                    icon: Icons.person,
                    iconColor: Colors.black,
                    iconActiveColor: Colors.deepPurpleAccent,
                    text: 'Profile',
                    textColor: Colors.deepPurpleAccent,
                    backgroundColor: darkGrey.withAlpha(150),
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
