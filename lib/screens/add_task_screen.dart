import 'package:flutter/material.dart';
import 'package:todo_app/components/add_task_button.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:40.0, right: 20.0, left: 20.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "I need to complete my homework.",
              hintStyle: TextStyle(
                color: Colors.grey
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFB17457),
                  width: 2.0,
                )
              ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFB17457),
                      width: 2.0,
                    )
                )
            ),
          ),
          AddTaskButton(onPressed: (){
            print('button clicked');
          })
        ],
      ),
    );
  }
}
