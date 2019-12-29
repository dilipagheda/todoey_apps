import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/Home.dart';
import 'package:provider/provider.dart';

import 'models/TaskList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskList>(
      builder: (context) => TaskList(),
      child: MaterialApp(
          title: 'Todoey',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Home()),
    );
  }
}
