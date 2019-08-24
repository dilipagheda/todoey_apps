import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/Task.dart';

class TaskItemWidget extends StatelessWidget {
  Task task;

  TaskItemWidget(this.task);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.desc),
      trailing: Checkbox(value: task.isDone, onChanged: null),
    );
  }
}
