import 'package:flutter/material.dart';

class AddTaskButton extends StatelessWidget {

  final VoidCallback onPressed;

  const AddTaskButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFB17457),
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0))),
        child: Text(
          "ADD TASK",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 25.0),
        ),
      ),
    );
  }
}