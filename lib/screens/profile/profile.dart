import 'package:flutter/material.dart';
import 'package:freelancing_platform/models/personal.dart';
import 'package:freelancing_platform/models/user.dart';
import 'package:freelancing_platform/screens/profile/prior_diagnosis.dart';
import 'package:freelancing_platform/screens/profile/profile_header.dart';
import 'package:freelancing_platform/screens/profile/settings_form.dart';
import 'package:freelancing_platform/screens/profile/symptoms_form.dart';
import 'package:freelancing_platform/services/auth.dart';
import 'package:freelancing_platform/services/database.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:freelancing_platform/widgets/loading.dart';
import 'package:freelancing_platform/widgets/symptom_container.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  static String id = 'Profile';
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    final size = MediaQuery.of(context).size;
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Provider.value(
              value: user,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                child: SettingsForm(),
              ),
            );
          });
    }

    void _showSymptomsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Provider.value(
              value: user,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: SymptomsForm(),
              ),
            );
          });
    }

    void _showPriorPD() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            final screen = MediaQuery.of(context).size;
            return Provider.value(
              value: user,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: PriorPD(),
              ),
            );
          });
    }

    return StreamProvider<List<Personal>>.value(
        value: DatabaseService().personalData,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
                      child: AppBar(
              
              backgroundColor: Colors.deepPurpleAccent,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Profile",
                style: textStyle.copyWith(fontSize: 25),
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    child: Tooltip(
                        child: Icon(Icons.exit_to_app), message: "Logout"),
                    onTap: () => _auth.signOut(),
                  ),
                ),
              ],
            ),
          ),
          body: StreamBuilder<UserData>(
              stream: DatabaseService(uid: user.uid).userData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  UserData userData = snapshot.data;

                  return ListView(
                    children: [
                      ProfileHeader(size: size),
                      
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Text(
                              'Personal details',
                              style: textStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text("Edit"),
                            IconButton(
                              iconSize: 30,
                              icon: Icon(
                                Icons.settings,
                                // color: Colors.white,
                              ),
                              color: Colors.deepPurpleAccent,
                              onPressed: () {
                                _showSettingsPanel();
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.grey[200],

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Name: ${userData.name}',
                              style: textStyle.copyWith(color: Colors.black),
                            ),
                            Text(
                              'Gender: ${userData.gender}',
                              style: textStyle.copyWith(color: Colors.black),
                            ),
                            Text(
                              'Age: ${userData.age}',
                              style: textStyle.copyWith(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Your Interests',
                              style: textStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text("Reset & Edit"),
                            IconButton(
                              iconSize: 30,
                              icon: Icon(
                                Icons.settings,
                                // color: Colors.white,
                              ),
                              color: Colors.deepPurpleAccent,
                              onPressed: () {
                                _showSymptomsPanel();
                              },
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                         
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SymptomContainer(
                                currentState: userData.game,
                                symptom: 'gaming',
                              ),
                              SymptomContainer(
                                currentState: userData.imageEditing,
                                symptom: 'Image Editing',
                              ),
                              SymptomContainer(
                                currentState: userData.onlineAds,
                                symptom: 'Online ads',
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SymptomContainer(
                                currentState: userData.photography,
                                symptom: 'Photography',
                              ),
                              SymptomContainer(
                                currentState: userData.programming,
                                symptom: 'Programming',
                              ),
                              SymptomContainer(
                                currentState: userData.sm,
                                symptom: 'Social Media',
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SymptomContainer(
                                currentState: userData.video,
                                symptom: 'Videography',
                              ),
                              SymptomContainer(
                                currentState: userData.writing,
                                symptom: 'Writing',
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Any prior PD',
                                  style: textStyle.copyWith(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'diagnosis/treatment?',
                                  style: textStyle.copyWith(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Spacer(),
          
                            Text('Reset & Edit'),
                            IconButton(
                              iconSize: 30,
                              icon: Icon(
                                Icons.settings,
                                // color: Colors.white,
                              ),
                              color: Colors.deepPurpleAccent,
                              onPressed: () {
                                _showPriorPD();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  Loading();
                }
              }),
        ));
  }
}
