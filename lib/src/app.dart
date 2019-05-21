import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';
// create a class that extends the be 'StatelessWidget' app, use stateless when you dont have any instance variable that is going to change

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0; //instance variable
  List<ImageModel> images = [];


  void fetchImage() async {
    counter += 1;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });

  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        appBar: AppBar(
          title: Text('Lets see some images'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
