import 'package:flutter/material.dart';
import 'package:challenge_1/task_model.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.task});

  final TaskModel task;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isDone = false;

  @override
  void initState() {
    isDone = widget.task.isDone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.menu),
        title: Text(
          widget.task.title,
          style: TextStyle(
            decoration: isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isDone,
          onChanged: (value) {
            setState(() {
              isDone = !isDone;
            });
          },
        ),
      ),
    );
  }
}
