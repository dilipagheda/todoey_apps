import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/Task.dart';

class TaskItemWidget extends StatelessWidget {
  Task task;
  Function toggleDone;
  Function deleteItem;

  TaskItemWidget(this.task, this.toggleDone, this.deleteItem);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(color: Colors.red),
      key: Key(task.desc),
      onDismissed: (direction) {
        deleteItem();
      },
      child: ListTile(
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
      ),
    );
  }
}
