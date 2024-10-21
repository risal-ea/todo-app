import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function(bool?) checkboxCallback;
  final VoidCallback longPressCallback;  // Use VoidCallback here

  TaskTile({
    super.key,
    required this.taskName,
    required this.isChecked,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: longPressCallback,  // Trigger on long press
      child: Container(
        margin: EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(20.0),
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
                    color: isChecked ? Colors.grey : null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckBoxState;

  const TaskCheckBox({
    super.key,
    required this.checkBoxState,
    required this.toggleCheckBoxState,
  });

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
