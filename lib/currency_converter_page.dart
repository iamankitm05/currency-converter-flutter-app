import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _CurrencyConverterState();
  }
}

class _CurrencyConverterState extends State<StatefulWidget> {
  static const dollarToINRRate = 83.10;
  late double currenyInINR = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$currenyInINR ₹',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30
              ),
            ),
            Padding (
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    if(text.length > 0) {
                      currenyInINR = double.parse(text) * dollarToINRRate;
                    } else {
                      currenyInINR = 0;
                    }
                  });
                },
                style: const TextStyle(
                  color: Colors.white
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Amount",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                  ),
                  fillColor: Colors.white30,
                  filled: true,
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.blue
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true
                ),
              ),
            )
          ],
        ),
    );
  }

}