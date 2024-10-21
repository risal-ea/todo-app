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

  void addTask(String taskName) {
    tasks.add(Task(name: taskName));
    notifyListeners(); // Notify listeners to rebuild UI
  }

  int get completedTaskCount {
    return tasks.where((task) => task.isDone).length;
  }

  void deleteTask(int index) {
    tasks.removeAt(index); // Remove the task at the specified index
    notifyListeners();     // Notify listeners to update the UI
  }

}
