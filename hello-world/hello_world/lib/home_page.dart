

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

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
        title: const Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
              ],
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() => counter += 1)
        },
        child: const Icon(Icons.add)
      ,),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
        });
  }
}