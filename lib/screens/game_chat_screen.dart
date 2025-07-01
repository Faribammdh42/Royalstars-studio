import 'package:flutter/material.dart';

class GameChatScreen extends StatefulWidget {
  final String roomName;

  const GameChatScreen({super.key, required this.roomName});

  @override
  State<GameChatScreen> createState() => _GameChatScreenState();
}

class _GameChatScreenState extends State<GameChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = []; // Placeholder for chat messages
  int _score = 0;

  void _incrementScore() {
    setState(() {
      _score++;
    });
  }

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add(_messageController.text);
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.roomName),
      ),
      body: Column(
        children: [
          // Game View
          Container(
            height: 200,
            color: Colors.grey[300],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Score: $_score',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _incrementScore,
                    child: const Text('Tap Me!'),
                  ),
                ],
              ),
            ),
          ),
          // Chat View
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          // Message Input
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      hintText: 'Enter a message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
