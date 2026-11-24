import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// STATIC: root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Study Planner',
      home: HomeScreen(),
    );
  }
}

// STATIC: main screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // STATIC: top bar
      appBar: AppBar(title: const Text('My Study Planner')),

      body: Column(
        children: const [
          // STATIC: heading above the list
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'My Goals',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          // STATIC: hard-coded goal cards
          Card(
            child: ListTile(
              title: Text('Mathematics'),
              subtitle: Text('5 hours'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Flutter'),
              subtitle: Text('8 hours'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Networks'),
              subtitle: Text('3 hours'),
            ),
          ),
        ],
      ),

      // STATIC: floating button (does nothing yet)
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}