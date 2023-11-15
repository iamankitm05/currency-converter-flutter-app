import 'package:currency_converter/currency_converter_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text("Currency Converter"),
          ),
          body: const CurrencyConverter(),
        )
      ),
    );
  }

}