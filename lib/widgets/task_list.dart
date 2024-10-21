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
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Color(0xFFFAF7F0),
                      title: Text(
                        'Delete task',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                        'Are you sure you want to delete this task',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: Color(0xFFB17457),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Provider.of<TaskData>(context, listen: false)
                                .deleteTask(index);
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Delete',
                            style: TextStyle(
                                color: Color(0xFFB17457),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    );
                  });
              // Provider.of<TaskData>(context, listen: false).deleteTask(index);
            },
          );
        },
      ),
    );
  }
}
