import 'package:flutter/material.dart';

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
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // How far the shadow spreads
                      blurRadius: 3, // How blurry the shadow looks
                      offset: Offset(0,
                          2), // Changes position of shadow (horizontal, vertical)
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      top: 25.0, left: 20.0, right: 20.0, bottom: 25.0),
                  child: Row(
                    children: [
                      // Icon(icons),
                      Text(
                        "This is an simple task",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
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
