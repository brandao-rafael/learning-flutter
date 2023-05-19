import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/currency.png', width: 150),
              const SizedBox(height: 50),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 57,
                        child: DropdownButton<String>(
                          underline: Container(height: 1, color: Colors.amber),
                          isExpanded: true,
                          value: 'Real',
                          items: const [
                            DropdownMenuItem(child: Text('Real'), value: 'Real'),
                            DropdownMenuItem(child: Text('Dolar'), value: 'Dolar'),
                            DropdownMenuItem(child: Text('Euro'), value: 'Euro'),
                            DropdownMenuItem(child: Text('BTC'), value: 'Bitcoin',),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber)
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber)
                          ),
                        ),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)
                ),
                child: const Text("Converter"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

