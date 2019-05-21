import 'package:flutter/material.dart';

// create a class that extends the be 'StatelessWidget' app, use stateless when you dont have any instance variable that is going to change

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('hi there');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
