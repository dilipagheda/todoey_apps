import 'package:flutter/material.dart';

//#63C9FE

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF63C9FE),
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
                    "12 Tasks",
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
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
