import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/freelancer/freelance_profile_pick.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    Key key,
    @required this.screen,
  }) : super(key: key);

  final Size screen;

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
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: screen.width - 20,
        height: screen.height * 0.33,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500].withAlpha(100),
                offset: Offset(5, 5),
                blurRadius: 10,
              )
            ]),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: AutoSizeText(
                'Bojack has signed up for your job posting',
                maxLines: 2,
                style: montserrat.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 19),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  padding: kDeafultPadding,
                  child: SmoothStarRating(
                      allowHalfRating: true,
                      onRated: (v) {},
                      starCount: 5,
                      rating: 4,
                      size: screen.width * 0.064,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 5),
                  child: Text(
                    'Job:',
                    // textAlign: TextAlign.left,
                    maxLines: 2,
                    style: montserrat.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.5),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 8),
                  child: AutoSizeText(
                    '"Looking for actors for short film"',

                    // textAlign: TextAlign.left,
                    maxLines: 2,
                    style: montserrat.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, FreelancerProfilePick.id);
                            },
                            child: Text(
                              'View Profile',
                              style: montserrat.copyWith(fontSize: 16),
                            )),
                      )),
                
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
