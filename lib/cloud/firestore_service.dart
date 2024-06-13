import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<DocumentSnapshot> getMenuData(String docId) {
    return _db.collection('menus').doc(docId).snapshots();
  }
}
