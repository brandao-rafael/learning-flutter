import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 57,
            child: DropdownButton<String>(
              iconEnabledColor: Colors.amber,
              underline: Container(height: 1, color: Colors.amber),
              isExpanded: true,
              value: 'Real',
              items: const [
                DropdownMenuItem(child: Text('Real'), value: 'Real'),
                DropdownMenuItem(child: Text('Dolar'), value: 'Dolar'),
                DropdownMenuItem(child: Text('Euro'), value: 'Euro'),
                DropdownMenuItem(
                  child: Text('BTC'),
                  value: 'Bitcoin',
                ),
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
                  borderSide: BorderSide(color: Colors.amber)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber)),
            ),
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
