import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_widget.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Provider.of<TaskData>(context).tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: Provider.of<TaskData>(context).tasks[index].name,
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            checkboxCallback: (bool? checkBoxState) {
              Provider.of<TaskData>(context, listen: false)
                  .tasks[index]
                  .toggleDone();
              Provider.of<TaskData>(context, listen: false).notifyListeners();
            },
            longPressCallback: () {
              Provider.of<TaskData>(context, listen: false).deleteTask(index);
            },
          );
        },
      ),
    );
  }
}
