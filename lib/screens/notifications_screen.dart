import 'package:flutter/material.dart';
import 'package:myapp/themes/app_theme.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: AppTheme.backgroundDecoration,
        child: ListView.builder(
          itemCount: 5, // Replace with actual notification count
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: AppTheme.glassmorphismDecoration,
              child: Row(
                children: [
                  Icon(
                    index.isEven ? Icons.favorite : Icons.comment,
                    color: index.isEven ? Colors.pinkAccent : Colors.lightBlueAccent,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      index.isEven
                          ? 'Someone liked your new track "Starry Night".'
                          : 'You have a new follower!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
