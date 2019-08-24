import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/Task.dart';

class TaskItemWidget extends StatelessWidget {
  Task task;
  Function toggleDone;

  TaskItemWidget(this.task, this.toggleDone);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.desc,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          value: task.isDone,
          onChanged: (value) {
            toggleDone(value);
          }),
    );
  }
}
