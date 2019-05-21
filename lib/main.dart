// I need to import a helper library from flutter to get content on screen
// define a 'main' function to run when our app starts
// create a new text widget to show text on screen
// take that widget and get it on the screen

import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lets see some images'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('hi there');
      },
      child: Icon(Icons.add),),
    ),
  );

  runApp(app);
}
