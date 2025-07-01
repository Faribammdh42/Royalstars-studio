import 'package:flutter/material.dart';
import 'package:myapp/themes/app_theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About & Help'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: AppTheme.backgroundDecoration,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: AppTheme.glassmorphismDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'RoyalStar',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Version 1.0.0',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'About RoyalStar',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'RoyalStar is a mobile application that allows users to create, listen to, and upload music. It leverages the power of AI to generate music from text prompts, providing a unique experience for music lovers and creators.',
                  style: TextStyle(color: Colors.white, height: 1.5),
                ),
                SizedBox(height: 30),
                Text(
                  'Help & Support',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'For any questions, feedback, or support requests, please contact us at support@royalstar.app.',
                  style: TextStyle(color: Colors.white, height: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
