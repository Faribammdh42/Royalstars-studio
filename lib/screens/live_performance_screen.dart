import 'package:flutter/material.dart';

class LivePerformanceScreen extends StatelessWidget {
  const LivePerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Performance'),
      ),
      body: Column(
        children: [
          // Placeholder for video/audio stream
          Container(
            height: 200,
            color: Colors.black,
            child: const Center(
              child: Icon(Icons.music_video, color: Colors.white, size: 100),
            ),
          ),
          // Placeholder for queue
          Container(
            height: 50,
            color: Colors.grey[300],
            child: const Center(
              child: Text('Queue: User 1, User 2, User 3'),
            ),
          ),
          // Placeholder for chat
          Expanded(
            child: ListView.builder(
              itemCount: 20, // Placeholder for chat messages
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text('User ${index + 1}'),
                  subtitle: const Text('A message'),
                );
              },
            ),
          ),
          // Placeholder for gifting
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.card_giftcard),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.star),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // Placeholder for message input
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Send a message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
