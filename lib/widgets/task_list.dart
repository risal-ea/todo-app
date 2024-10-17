import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_widget.dart';
import 'package:todo_app/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(
      name: 'wow',
      isDone: true,
    ),
    Task(
      name: 'study',
      isDone: false,
    ),
    Task(
      name: 'sleep',
      isDone: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (bool? checkBoxState){
              setState(() {
                tasks[index].toggleDone();
              });
            },
          );
        },
        itemCount: tasks.length,
      ),
    );
  }
}
