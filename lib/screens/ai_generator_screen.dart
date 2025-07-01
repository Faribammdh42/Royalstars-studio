import 'package:flutter/material.dart';
import 'package:myapp/themes/app_theme.dart';

class AiGeneratorScreen extends StatelessWidget {
  const AiGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI Music Generator'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: AppTheme.backgroundDecoration,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: AppTheme.glassmorphismDecoration,
                child: Column(
                  children: [
                    TextField(
                      maxLines: 4,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Describe the music you want to create...\n(e.g., a relaxing piano music about stars)',
                        hintStyle: TextStyle(color: Colors.white70),
                        border: InputBorder.none,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Add AI music generation logic
                      },
                      icon: Icon(Icons.auto_awesome, color: Colors.white),
                      label: Text('Generate Music'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.secondary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Generated Music',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              // Placeholder for generated music player
              Container(
                padding: const EdgeInsets.all(16),
                decoration: AppTheme.glassmorphismDecoration,
                child: Row(
                  children: [
                    Icon(Icons.music_video, color: Colors.white, size: 40),
                    SizedBox(width: 16),
                    Text(
                      'Your generated track will appear here',
                      style: TextStyle(color: Colors.white70),
                    ),
                    Spacer(),
                    Icon(Icons.play_circle_fill, color: Colors.white, size: 40),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
