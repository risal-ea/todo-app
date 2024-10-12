import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_widget.dart';
class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
          Task(taskName: 'Need To Sleep'),
        ],
      ),
    );
  }
}