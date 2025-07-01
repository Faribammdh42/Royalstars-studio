import 'package:flutter/material.dart';
import 'package:myapp/screens/game_chat_screen.dart';

class ChatRoomsScreen extends StatelessWidget {
  const ChatRoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Rooms'),
      ),
      body: ListView.builder(
        itemCount: 10, // Placeholder for chat rooms
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.group),
            ),
            title: Text('Chat Room ${index + 1}'),
            subtitle: const Text('Last message...'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GameChatScreen(roomName: 'Chat Room ${index + 1}'),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Create new chat room
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
