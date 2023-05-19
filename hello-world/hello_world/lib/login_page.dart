import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

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
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Container(height: 84),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.all(28.0),
                    child: Image.asset(
                        'assets/images/logo.png'
                    ),
                  ),
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
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(builder: (context) => HomePage())
                          // );
                          Navigator.of(context).pushReplacementNamed('/home');
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
