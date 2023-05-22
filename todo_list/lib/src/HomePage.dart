import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Todo's"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return ListTile(title: Text('item $index'),);
      }),
    );
  }
}