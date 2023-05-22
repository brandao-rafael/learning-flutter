import 'package:currency_converter/app/components/currency_box.dart';
import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});


  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

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
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model as CurrencyModel;
                  });
                },
                controller: toText,
              ),
              const SizedBox(height: 10,),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model as CurrencyModel;
                  });
                },
                controller: fromText,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amber)),
                child: const Text("Converter"),
                onPressed: () {
                  homeController.convert();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
