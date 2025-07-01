import 'package:flutter/material.dart';
import 'package:myapp/themes/app_theme.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppTheme.backgroundDecoration,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                decoration: AppTheme.glassmorphismDecoration,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Song Title',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Artist Name',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 20),
                    Slider(
                      value: 0.5,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).colorScheme.secondary,
                      inactiveColor: Colors.white30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('1:30', style: TextStyle(color: Colors.white)),
                          Text('3:00', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.skip_previous, color: Colors.white, size: 40),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.play_arrow, color: Colors.white, size: 60),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.skip_next, color: Colors.white, size: 40),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
