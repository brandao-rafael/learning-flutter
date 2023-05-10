

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: Center(
          child: GestureDetector(
            child: Text("Counter: $counter", 
            style: TextStyle(fontSize: 20),),
            onTap: () {
              setState((){
                counter += 1;
              });
          }),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() => counter += 1)
        },
        child: Icon(Icons.add)
      ,),
    );
  }
}