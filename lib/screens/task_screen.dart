import 'package:flutter/material.dart';
import 'package:todo_app/components/add_task_button.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:todo_app/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF7F0),
      body: SafeArea(
        child: Container(
          padding:
              EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: Color(0xFFB17457),
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Today's Tasks",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "(2/4) Compleated Task",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              SizedBox(
                height: 40.0,
              ),
              TaskList(),
              AddTaskButton(onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: SingleChildScrollView(
                              child: AddTaskScreen(),
                          ),
                        ));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
