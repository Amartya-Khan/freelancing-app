import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freelancing_platform/models/personal.dart';
import 'package:freelancing_platform/models/user.dart';


class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference personalDataCollection =
      FirebaseFirestore.instance.collection('personalData');

  Future<void> updatePersonalData(String name, String gender, int age,   final bool photography,
  final bool programming,
  final bool imageEditing,
  final bool onlineAds,
  final bool game,
  final bool writing,
  final bool sm,
  final bool video,   ) async {
//we're searching for the document based on uid
    return await personalDataCollection.doc(uid).set({
      'name': name,
      'gender': gender,
      'age': age,
       'photography': photography,
  'programming':programming,
   "imageEditing": imageEditing,
  'onlineAds': onlineAds,
  'game': game,
  'writing': writing,
  'sm': sm,
   'video': video,
    });
  }

  //personal data list from snapshot
  List<Personal> _personalDataListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((e) {
      return Personal(
        name: e.data()['name'] ?? '',
        gender: e.data()['gender'] ?? '',
        age: e.data()['age'] ?? 0,
        game: e.data()['game'] ?? false,
        imageEditing:  e.data()['imageEditing'] ?? false,
        onlineAds:  e.data()['onlineAds'] ?? false,
        photography:  e.data()['photography'] ?? false,
        programming:  e.data()['programming'] ?? false,
        sm:  e.data()['sm'] ?? false,
        video: e.data()['video'] ?? false,
        writing: e.data()['writing'] ?? false,

        
        
      );
    }).toList();
  }

//personal user data from stream
  UserData _personalDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data()['name'],
      gender: snapshot.data()['gender'],
      age: snapshot.data()['age'],
      game:  snapshot.data()['game'],
      imageEditing: snapshot.data()['imageEditing'],
      onlineAds:  snapshot.data()['onlineAds'],
      photography:  snapshot.data()['photography'],
      programming: snapshot.data()['programming'],
      sm:  snapshot.data()['sm'],
      video: snapshot.data()['video'],
      writing: snapshot.data()['writing'],
    );
  }

//get personalData stream
  Stream<List<Personal>> get personalData {
    return personalDataCollection
        .snapshots()
        .map(_personalDataListFromSnapshot);
  }

//get user doc stream
  Stream<UserData> get userData {
    return personalDataCollection
        .doc(uid)
        .snapshots()
        .map(_personalDataFromSnapshot);
  }
}
