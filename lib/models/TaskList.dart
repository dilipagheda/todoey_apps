import 'package:flutter/material.dart';

import 'Task.dart';

class TaskList extends ChangeNotifier {
  List<Task> _tasks;

  TaskList() {
    _tasks = List<Task>();
    _tasks.add(Task(desc: "Build todoey app in fluter", isDone: false));
    _tasks.add(Task(desc: "Build portfolio website in react", isDone: false));
    _tasks.add(Task(desc: "Do some exercise", isDone: false));
  }

  List<Task> get tasks {
    return _tasks;
  }

  void addTask(String desc) {
    _tasks.add(Task(desc: desc, isDone: false));
    notifyListeners();
  }
}
