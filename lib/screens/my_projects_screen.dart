import 'package:flutter/material.dart';
import 'package:myapp/themes/app_theme.dart';

class MyProjectsScreen extends StatelessWidget {
  const MyProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: AppTheme.backgroundDecoration,
        child: ListView.builder(
          itemCount: 10, // Replace with actual user's project count
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: AppTheme.glassmorphismDecoration,
              child: Row(
                children: [
                  Icon(Icons.music_note, color: Colors.white),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Song Title ${index + 1}',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Uploaded on 2025-06-29',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      // Add delete functionality
                    },
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
