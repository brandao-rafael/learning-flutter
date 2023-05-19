import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.pink[400],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  'https://static-00.iconduck.com/assets.00/tinder-icon-760x1024-p6andm06.png',
                  height: 150,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Location Charger',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Plugin app for Tinder',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () => {print('Hello world')},
                child: Text(
                  'Login with facebook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.pink[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
