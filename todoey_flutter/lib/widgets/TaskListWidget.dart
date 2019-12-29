import 'package:flutter/material.dart';

import 'TaskItemWidget.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/TaskList.dart';

class TaskListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var taskList = Provider.of<TaskList>(context);

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ...taskList.tasks.map((task) => TaskItemWidget(task, (value) {
                  taskList.toggleDone(task, value);
                }, () {
                  taskList.deleteItem(task);
                }))
          ],
        ));
  }
}
