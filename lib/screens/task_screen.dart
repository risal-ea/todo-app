import 'package:flutter/material.dart';
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
              EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0, bottom: 30.0),
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

              Container(
                margin: EdgeInsets.only(top: 25.0),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    print('butoon got clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB17457),
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  child: Text("ADD TASK",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


