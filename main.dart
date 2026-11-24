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
      debugShowCheckedModeBanner: false,
      title: 'My Study Planner',
      home: HomeScreen(),
    );
  }
}

// ---------------------------------------------------------------
// SCREEN 1: the list (StatefulWidget because the data changes)
// ---------------------------------------------------------------
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // LOGIC: the data (a list of maps: subject, hours, done)
  final List<Map<String, dynamic>> goals = [
    {'subject': 'Mathematics', 'hours': 5, 'done': false},
    {'subject': 'Flutter', 'hours': 8, 'done': false},
    {'subject': 'Networks', 'hours': 3, 'done': false},
  ];

  // LOGIC: mark a goal as done / not done
  void toggleGoal(int index) {
    setState(() {
      goals[index]['done'] = !goals[index]['done'];
    });
  }

  // LOGIC: remove a goal from the list
  void deleteGoal(int index) {
    setState(() {
      goals.removeAt(index);
    });
  }

  // LOGIC: add a sample goal (the real form comes in a later phase)
  void addSampleGoal() {
    setState(() {
      goals.add({
        'subject': 'New goal ${goals.length + 1}',
        'hours': 2,
        'done': false,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // STATIC: top bar
      appBar: AppBar(title: const Text('My Study Planner')),

      body: Column(
        children: [
          // STATIC: heading above the list
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'My Goals',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          // CONNECTION 1: the list is built from the data
          Expanded(
            child: ListView.builder(
              itemCount: goals.length,
              itemBuilder: (context, index) {
                final goal = goals[index];
                return Card(
                  child: ListTile(
                    leading: Checkbox(
                      value: goal['done'],
                      onChanged: (_) => toggleGoal(index),
                    ),
                    title: Text(
                      goal['subject'],
                      style: TextStyle(
                        decoration: goal['done']
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                    subtitle: Text('${goal['hours']} hours'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => deleteGoal(index),
                    ),
                    onTap: () => toggleGoal(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      // CONNECTION 2: the button calls the logic (adds a sample goal)
      floatingActionButton: FloatingActionButton(
        onPressed: addSampleGoal,
        child: const Icon(Icons.add),
      ),
    );
  }
}