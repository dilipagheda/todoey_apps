import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/TaskList.dart';

import 'AddTaskForm.dart';
import 'EmptyStateWidget.dart';
import 'TaskListWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var taskList = Provider.of<TaskList>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskForm(),
              )),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xFF63C9FE),
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(30, 80, 30, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF63C9FE),
                    radius: 50,
                    child: Icon(
                      Icons.format_list_bulleted,
                      size: 60,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Todoey",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    taskList.tasks.length > 0
                        ? "${taskList.tasks.length} Tasks"
                        : "No items",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Color(0xFF63C9FE),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: taskList.tasks.length == 0
                      ? EmptyStateWidget()
                      : TaskListWidget(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
