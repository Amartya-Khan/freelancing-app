import 'package:flutter/material.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:google_fonts/google_fonts.dart';

class FreelancerProfilePick extends StatefulWidget {
  static String id = "FreelancerProfilePick";
  @override
  _FreelancerProfilePickState createState() =>
      new _FreelancerProfilePickState();
}

class _FreelancerProfilePickState extends State<FreelancerProfilePick> {
   acceptAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Confirm'),
            content: Text('Accept the freelancer to work on your job?'),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {},
                elevation: 5.0,
                child: Text('Yes'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                elevation: 5.0,
                child: Text('No'),
              ),
            ],
          );
        });
  }

  declineAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Confirm'),
            content: Text('Decline the freelancer to work on your job?'),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {},
                elevation: 5.0,
                child: Text('Yes'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                elevation: 5.0,
                child: Text('No'),
              ),
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
      elevation: 0,),
        body: ListView(
      children: <Widget>[
        Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),

      // It will cover 20% of our total height

      height: size.height * 0.15,

      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 16 + kDefaultPadding,
            ),
            height: size.height * 0.15 - 27,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Row(
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hire Freelancer?',
                  style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                
                
                
                //  Spacer(),
                // SvgPicture.asset('assets/logo-clock.svg', width: 200,),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[700],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: FlatButton(
                            onPressed: () {
                              acceptAlertDialog(context);
                            },
                            child: Text(
                              'Accept',
                              style: montserrat.copyWith(fontSize: 15),
                            )),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              declineAlertDialog(context);
                            },
                            child: Text(
                              'Decline',
                              style: montserrat.copyWith(fontSize: 15),
                            ),
                          ))),
                  // Icon(Icons.search)
                ],
              ),
            ),
          
        ],
      ),
    ),
        Center(
          child: Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(75.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7.0, color: Colors.black.withAlpha(100))
                  ])),
        ),
        SizedBox(height: 90.0),
        Center(
          child: Text(
            'Bojack Horseman',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
        ),
        SizedBox(height: 15.0),
        Center(
          child: Text(
            'Hollywoo Actor',
            style: TextStyle(
                fontSize: 17.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Montserrat'),
          ),
        ),
        SizedBox(height: size.height*0.03),
        Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Rating:',
                    // textAlign: TextAlign.left,
                    maxLines: 2,
                    style: montserrat.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SmoothStarRating(
                      allowHalfRating: true,
                      onRated: (v) {},
                      starCount: 5,
                      rating: 4,
                      size: size.width * 0.064,
                      isReadOnly: true,
                      // fullRatedIconData: Icons.blur_off,
                      // halfRatedIconData: Icons.blur_on,
                      color: Colors.deepPurpleAccent,
                      borderColor: Colors.deepPurpleAccent,
                      spacing: 0.0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Skills:',
                    // textAlign: TextAlign.left,
                    maxLines: 2,
                    style: montserrat.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Voice Acting',
                            style: montserrat.copyWith(fontSize: 14),
                          )),
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Acting',
                            style: montserrat.copyWith(fontSize: 14),
                          )),
                    )),
              ],
            ),
      
        SizedBox(height: 45.0),
        Center(
          child: Container(
              height: 40.0,
              width: size.width*0.9,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.deepPurpleAccent,
                color: Colors.deepPurpleAccent,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'View past work and sales details',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              )),
        ),
            SizedBox(height: 45.0),
      ],
    ));
  }
}
