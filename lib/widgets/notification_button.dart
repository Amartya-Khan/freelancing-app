import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/notifications/notification_page.dart';
import 'package:freelancing_platform/shared/constants.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10, bottom: 10, top: 10),
      child: Container(
        // color: Colors.white,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.deepPurpleAccent.shade400.withAlpha(150),
                offset: Offset(4, 4),
                blurRadius: 10,
                spreadRadius: 1),
            BoxShadow(
                color: Colors.deepPurpleAccent
                    .withRed(225 - 100)
                    // .withBlue(225-150)
                    .withGreen(225 - 100)
                    .withAlpha(150),
                offset: Offset(-4, -4),
                blurRadius: 10,
                spreadRadius: 1
                // lighten(Colors.deepPurpleAccent, 0.3),
                )
          ],
        ),
        child: Center(
          child: IconButton(
            splashColor: Colors.transparent,
            icon: Icon(Icons.notification_important_outlined),
            color: bg,
            onPressed: () {
              Navigator.pushNamed(context, NotificationPage.id);
            },

            // shape:RoundedRectangleBorder(
            // borderRadius: BorderRadius.circular(20),),
            // child: Tooltip(child: Icon(Icons.exit_to_app,), message: "Logout"),
          ),
        ),
      ),
      //     Tooltip(child: Icon(Icons.exit_to_app), message: "Logout"),
      // onTap: () => _auth.signOut(),
    );
  }
}
