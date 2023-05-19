

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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK04QnGZtxgHfLEHZ7xIcMraX7U1Zxgn_BOA&usqp=CAU'
                ),
              ),
              accountName: Text('Rafael'),
              accountEmail: Text('rafaelbrandao1992@gmail.com')
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('tela de inicio'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              }, 
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              subtitle: Text('finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
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