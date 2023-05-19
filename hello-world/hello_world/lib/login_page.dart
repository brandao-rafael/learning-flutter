import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 100),
                Container(
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/logo.png'),
                ),
                const SizedBox(height: 58),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
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
                      ElevatedButton(
                          onPressed: () {
                            if (email == 'rafaelbrandao1992@gmail.com' &&
                                password == '123456789') {
                              // Navigator.of(context).pushReplacement(
                              //   MaterialPageRoute(builder: (context) => HomePage())
                              // );
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            }
                          },
                          child: const SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Entrar',
                                textAlign: TextAlign.center,
                              ))),
                    ],
                  ),
                )),
              ]),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child:
                Image.asset('assets/images/background.png', fit: BoxFit.cover)),
        Container(color: Colors.black.withOpacity(0.4)),
        _body(),
      ],
    ));
  }
}
