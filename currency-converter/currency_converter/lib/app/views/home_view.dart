import 'package:currency_converter/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/currency.png', width: 150),
              const SizedBox(height: 50),
              const CurrencyBox(),
              const SizedBox(height: 10,),
              const CurrencyBox(),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amber)),
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
