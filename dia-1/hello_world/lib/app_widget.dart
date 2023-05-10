import 'package:flutter/material.dart';

import 'home_page.dart';


class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        secondaryHeaderColor: Color.fromARGB(255, 255, 224, 129)
      ),
      home: HomePage(),
    );
  }
}