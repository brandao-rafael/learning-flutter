import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              Container(height: 10),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              Container(height: 10),
              ElevatedButton(
                  onPressed: () {
                    if (email == 'rafaelbrandao1992@gmail.com' &&
                        password == '123456789') {
                      print('Correto');
                    } else {
                      print('Login invalido');
                    }
                  },
                  child: const Text('Entrar')),
            ]),
          ),
        ),
      ),
    );
  }
}
