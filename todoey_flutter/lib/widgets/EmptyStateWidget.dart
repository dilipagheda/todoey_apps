import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "No more tasks left!",
            style: TextStyle(
              fontSize: 25,
              color: Color(0xFF63C9FE),
            ),
          ),
          Text(
            "Time to add some more!",
            style: TextStyle(
              fontSize: 15,
              color: Color(0xFF63C9FE),
            ),
          ),
        ],
      ),
    );
  }
}
