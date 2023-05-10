import 'package:flutter/material.dart';

main() {
  runApp(const AppWidget(
    title: "Hello World - Flutter",
    ));
}


class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}


class HomePageState extends State<HomePage> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Center(
          child: GestureDetector(
            child: Text("Hello World $counter"),
            onTap: () {
              setState((){
                counter += 1;
              });
          }),
        )
      );
  }
}