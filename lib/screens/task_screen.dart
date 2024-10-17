import 'package:flutter/material.dart';
import 'package:todo_app/components/add_task_button.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:todo_app/widgets/task_list.dart';
import 'package:todo_app/models/task.dart';

class TasksScreen extends StatefulWidget {
  TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
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

  void updateTaskCompletion(){
    setState(() {
      // Just calling setState forces the UI to update
    });
  }


  void addTask(String newTaskName){
    setState(() {
      tasks.add(Task(name: newTaskName, isDone: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    int compleatedTask = tasks.where((task) => task.isDone).length;

    return Scaffold(
      backgroundColor: Color(0xFFFAF7F0),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: 40.0,
            left: 30.0,
            right: 30.0,
          ),
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
                "(${compleatedTask}/${tasks.length}) Compleated Task",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              SizedBox(
                height: 40.0,
              ),
              TaskList(
                tasks: tasks,
                  updateTaskCompletion: updateTaskCompletion,
              ),
              AddTaskButton(onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: SingleChildScrollView(
                              child: AddTaskScreen(addTaskCallback: (newTask) {
                            addTask(newTask);
                          })),
                        ));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
