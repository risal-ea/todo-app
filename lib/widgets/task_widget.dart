import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String taskName;

  const Task({
    super.key,
    required this.taskName,
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
            offset: Offset(0,
                2), // Changes position of shadow (horizontal, vertical)
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(
            top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
        child: Row(
          children: [
            Transform.scale(
              scale: 1.5,
              child: Checkbox(
                value: true,
                onChanged: null,
                activeColor: Color(0xFFB17457),
              ),
            ),
            Text(
              taskName,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
