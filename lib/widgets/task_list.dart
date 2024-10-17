import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_widget.dart';
import 'package:todo_app/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  final Function updateTaskCompletion;

  const TaskList({
    super.key,
    required this.tasks,
    required this.updateTaskCompletion,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool? checkBoxState){
              setState(() {
                widget.tasks[index].toggleDone();
              });
              widget.updateTaskCompletion();
            },
          );
        },
        itemCount: widget.tasks.length,
      ),
    );
  }
}
