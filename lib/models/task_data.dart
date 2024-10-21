import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(
      name: 'Go to the gym',
      isDone: true,
    ),
    Task(
      name: 'clean the room',
      isDone: false,
    ),
    Task(
      name: 'date with gf',
      isDone: false,
    ),
  ];
}
