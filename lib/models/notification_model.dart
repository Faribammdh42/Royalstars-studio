import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationModel {
  final String id;
  final String message;
  final String userId;
  final bool isRead;
  final Timestamp createdAt;

  NotificationModel({
    required this.id,
    required this.message,
    required this.userId,
    required this.isRead,
    required this.createdAt,
  });

  factory NotificationModel.fromMap(Map<String, dynamic> data, String documentId) {
    return NotificationModel(
      id: documentId,
      message: data['message'],
      userId: data['userId'],
      isRead: data['isRead'],
      createdAt: data['createdAt'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'userId': userId,
      'isRead': isRead,
      'createdAt': createdAt,
    };
  }
}
