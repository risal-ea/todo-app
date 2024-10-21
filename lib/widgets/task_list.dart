import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_widget.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TaskList extends StatefulWidget {
  final Function updateTaskCompletion;

  const TaskList({
    super.key,
    required this.updateTaskCompletion,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                taskName: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (bool? checkBoxState) {
                  setState(() {
                    taskData.tasks[index].toggleDone();
                  });
                  widget.updateTaskCompletion();
                },
              );
            },
            itemCount: Provider.of<TaskData>(context).tasks.length,
          ),
        );
      },
    );
  }
}
