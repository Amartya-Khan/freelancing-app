import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freelancing_platform/models/user.dart';
import 'package:freelancing_platform/services/database.dart';
import 'package:freelancing_platform/widgets/loading.dart';
import 'package:provider/provider.dart';

class SymptomsForm extends StatefulWidget {
  @override
  _SymptomsFormState createState() => _SymptomsFormState();
}

class _SymptomsFormState extends State<SymptomsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> genders = ['Male', 'Female', 'Other'];

  //form values
  bool _currentPhotography = false;
  bool _currentProgram = false;
  bool _currentImageEdit = false;
  bool _currentOnlineAds = false;
  bool _currentGame = false;
  bool _currentWrite = false;
  bool _currentSM = false;
  bool _currentVideo = false;
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            UserData userData = snapshot.data;
            return Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Update Personal Details",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: (_currentGame)
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                          textColor:  Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            setState(() {
                              _currentGame =
                                  !_currentGame;
                            });
                          },
                          child: Text(
                            "Game assets",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: (_currentImageEdit)
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                          textColor: 
                              Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            setState(() {
                              _currentImageEdit = !_currentImageEdit;
                            });
                          },
                          child: Text(
                            "Image Editing",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: (_currentOnlineAds)
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                          textColor:
                              Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            setState(() {
                              _currentOnlineAds = !_currentOnlineAds;
                            });
                          },
                          child: Text(
                            "Online ads",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: (_currentPhotography)
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                          textColor:  Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            setState(() {
                              _currentPhotography =
                                  !_currentPhotography;
                            });
                          },
                          child: Text(
                            "Photography",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: (_currentProgram)
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                          textColor:  Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            setState(() {
                              _currentProgram = !_currentProgram;
                            });
                          },
                          child: Text(
                            "Programming",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: (_currentSM)
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                          textColor:  Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            setState(() {
                              _currentSM = !_currentSM;
                            });
                          },
                          child: Text(
                            "Social Media content",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: (_currentVideo)
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                          textColor: Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            setState(() {
                              _currentVideo = !_currentVideo;
                            });
                          },
                          child: Text(
                            "Videography",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: (_currentWrite)
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                          textColor: 
                              Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            setState(() {
                              _currentWrite =
                                  !_currentWrite;
                            });
                          },
                          child: Text(
                            "Writing",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  Center(
                    child: Container(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () async {
                          await DatabaseService(uid: user.uid)
                              .updatePersonalData(
                                  userData.name,
                                  userData.gender,
                                  userData.age,
                                  _currentGame,
                                  _currentImageEdit,
                                  _currentOnlineAds,
                                  _currentPhotography,
                                  _currentProgram,
                                  _currentSM,
                                  _currentVideo,
                                  _currentWrite,
                                  );
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Update Symptoms",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Loading();
          }
        });
  }
}
