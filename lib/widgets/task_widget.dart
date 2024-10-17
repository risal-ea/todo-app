import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  bool isChecked;
  final Function(bool?) checkboxCallback;

  TaskTile({
    super.key,
    required this.taskName,
    required this.isChecked,
    required this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            spreadRadius: 2, // How far the shadow spreads
            blurRadius: 3, // How blurry the shadow looks
            offset: Offset(
                0, 2), // Changes position of shadow (horizontal, vertical)
          ),
        ],
      ),
      child: Container(
        padding:
            EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
        child: Row(
          children: [
            TaskCheckBox(
              checkBoxState: isChecked,
              toggleCheckBoxState: checkboxCallback,
            ),
            Expanded(
              child: Text(
                taskName,
                style: TextStyle(
                  fontSize: 25.0,
                  decoration: isChecked ? TextDecoration.lineThrough : null,
                  fontWeight: FontWeight.w500,
                  color: isChecked? Colors.grey: null,
                ),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckBoxState;

  const TaskCheckBox(
      {super.key,
      required this.checkBoxState,
      required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Checkbox(
        value: checkBoxState,
        onChanged: toggleCheckBoxState,
        activeColor: Color(0xFFB17457),
      ),
    );
  }
}
