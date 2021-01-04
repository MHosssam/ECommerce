import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/model/user.dart';

class FireStoreUser {
  final CollectionReference _userCollectionRef =
  FirebaseFirestore.instance.collection('Users');

  Future<void> addUserToFireStore(UserData user) async {
    return await _userCollectionRef
        .doc(user.userId)
        .set(user.toJson());
  }


}
