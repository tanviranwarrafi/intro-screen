import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.home,
              size: 50,
              color: Colors.blue,
            ),
            Text(
              "This is the scree after Introduction",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
