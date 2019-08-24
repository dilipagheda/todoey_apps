import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/TaskList.dart';

class AddTaskForm extends StatefulWidget {
  @override
  _AddTaskFormState createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  String taskValue;
  bool isValidate = false;

  @override
  Widget build(BuildContext context) {
    var taskList = Provider.of<TaskList>(context);
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF63C9FE),
              ),
            ),
            TextField(
              maxLength: 100,
              onChanged: (value) {
                taskValue = value;
              },
              style: TextStyle(
                fontSize: 20,
              ),
              autofocus: true,
              decoration: InputDecoration(
                errorText: isValidate ? "Please enter a value" : null,
                focusedBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(
                  color: Color(0xFF63C9FE),
                  width: 5,
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Color(0xFF63C9FE),
              onPressed: () {
                if (taskValue == null || taskValue.length == 0) {
                  setState(() {
                    isValidate = true;
                  });
                  return;
                }
                setState(() {
                  isValidate = false;
                });
                taskList.addTask(taskValue);
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Add",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
