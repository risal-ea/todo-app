import 'package:flutter/material.dart';
import 'package:todo_app/components/add_task_button.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();
  final Function addTaskCallback;

  AddTaskScreen({super.key, required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25.0, right: 20.0, left: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min, // This allows the column to take only the needed space
        children: [
          TextField(
            controller: _taskController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "I need to complete my homework.",
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Color(0xFFB17457), width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Color(0xFFB17457), width: 2.0),
              ),
            ),
            onSubmitted: (value) {
              addTaskCallback(value);
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10.0), // Add some space between the TextField and the button
          AddTaskButton(
            onPressed: () {
              String taskText = _taskController.text;
              if (taskText.isNotEmpty) {
                addTaskCallback(taskText);
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
