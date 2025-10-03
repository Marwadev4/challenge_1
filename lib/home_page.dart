import 'package:challenge_1/dialog.dart';
import 'package:challenge_1/task_card.dart';
import 'package:challenge_1/task_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TaskModel> tasks = [
    TaskModel(title: 'Complete Flutter assignment'),
    TaskModel(title: 'Reciew Clean Architecture'),
    TaskModel(title: 'Practice Widget Catalog'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: Icon(Icons.arrow_back),
        title: Text('Task Manager', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ReorderableListView.builder(
          itemCount: tasks.length,
          onReorder: (oldIndex, newIndex) {},
          itemBuilder: (context, index) => Dismissible(
            key: ValueKey(tasks[index]),
            confirmDismiss: (direction) async {
              return await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDialog();
                },
              );
            },
            onDismissed: (direction) {
              final deletedTask = tasks[index];
              final deletedIndex = index;
              setState(() => tasks.removeAt(index));
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Task deleted'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () =>
                        setState(() => tasks.insert(deletedIndex, deletedTask)),
                  ),
                ),
              );
            },
            child: TaskCard(task: tasks[index]),
          ),
        ),
      ),
    );
  }
}
