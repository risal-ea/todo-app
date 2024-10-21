import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:todo_app/widgets/task_list.dart';
import 'package:todo_app/components/add_task_button.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    int completedTaskCount = Provider.of<TaskData>(context).completedTaskCount;

    return Scaffold(
      backgroundColor: Color(0xFFFAF7F0),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color(0xFFB17457),
                child: Icon(
                  Icons.list,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Today's Tasks",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30.0),
              ),
              SizedBox(height: 5.0),
              Text(
                "($completedTaskCount/${Provider.of<TaskData>(context).tasks.length}) Completed Task",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              SizedBox(height: 40.0),
              TaskList(),
              AddTaskButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: AddTaskScreen(addTaskCallback: (newTask) {
                        Provider.of<TaskData>(context, listen: false)
                            .addTask(newTask);
                      }),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
