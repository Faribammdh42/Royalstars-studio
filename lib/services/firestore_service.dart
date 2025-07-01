import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/models/music_model.dart';
import 'package:myapp/models/user_model.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // User methods
  Future<void> addUser(UserModel user) {
    return _db.collection('users').doc(user.uid).set(user.toMap());
  }

  Stream<UserModel> streamUser(String uid) {
    return _db
        .collection('users')
        .doc(uid)
        .snapshots()
        .map((snap) => UserModel.fromMap(snap.data() as Map<String, dynamic>, snap.id));
  }

  // Music methods
  Future<void> addMusic(MusicModel music) {
    return _db.collection('projects').add(music.toMap());
  }

  Stream<List<MusicModel>> streamMusic() {
    return _db
        .collection('projects')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snap) => snap.docs
            .map((doc) => MusicModel.fromMap(doc.data(), doc.id))
            .toList());
  }

  Future<void> deleteMusic(String id) {
    return _db.collection('projects').doc(id).delete();
  }
}
