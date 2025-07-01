import 'package:flutter/material.dart';
import 'package:myapp/screens/discover_screen.dart';
import 'package:myapp/screens/my_projects_screen.dart';
import 'package:myapp/screens/ai_generator_screen.dart';
import 'package:myapp/screens/chat_rooms_screen.dart';
import 'package:myapp/screens/live_performance_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DiscoverScreen(),
    MyProjectsScreen(),
    AiGeneratorScreen(),
    ChatRoomsScreen(),
    LivePerformanceScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'My Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'AI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            label: 'Live',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
