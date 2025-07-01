class UserModel {
  final String uid;
  final String email;
  final String? displayName;
  final String? photoUrl;

  UserModel({
    required this.uid,
    required this.email,
    this.displayName,
    this.photoUrl,
  });

  // Factory constructor to create a UserModel from a map (e.g., from Firestore)
  factory UserModel.fromMap(Map<String, dynamic> data, String documentId) {
    final String email = data['email'];
    final String? displayName = data['displayName'];
    final String? photoUrl = data['photoUrl'];
    return UserModel(
      uid: documentId,
      email: email,
      displayName: displayName,
      photoUrl: photoUrl,
    );
  }

  // Method to convert a UserModel to a map (e.g., for writing to Firestore)
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'displayName': displayName,
      'photoUrl': photoUrl,
    };
  }
}
