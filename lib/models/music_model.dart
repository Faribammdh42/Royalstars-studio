import 'package:cloud_firestore/cloud_firestore.dart';

class MusicModel {
  final String id;
  final String title;
  final String artist;
  final String audioUrl;
  final String userId;
  final Timestamp createdAt;

  MusicModel({
    required this.id,
    required this.title,
    required this.artist,
    required this.audioUrl,
    required this.userId,
    required this.createdAt,
  });

  factory MusicModel.fromMap(Map<String, dynamic> data, String documentId) {
    return MusicModel(
      id: documentId,
      title: data['title'],
      artist: data['artist'],
      audioUrl: data['audioUrl'],
      userId: data['userId'],
      createdAt: data['createdAt'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'artist': artist,
      'audioUrl': audioUrl,
      'userId': userId,
      'createdAt': createdAt,
    };
  }
}
