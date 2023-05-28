import 'package:flutter/material.dart';
import 'dart:math';
import 'package:quote_generator/quotes.dart';

class QuoteGenerator extends StatefulWidget {
  const QuoteGenerator({super.key});

  @override
  State<QuoteGenerator> createState() => _QuoteGeneratorState();
}

class _QuoteGeneratorState extends State<QuoteGenerator> {

  void generateRandomQuote() {
    setState(() {
      final random = Random();
      final randomIndex = random.nextInt(quotes.length);
      currentQuote = quotes[randomIndex];
    });
  }
  String currentQuote = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote Generator'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuote,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Generate Quote'),
              onPressed: generateRandomQuote,
            ),
          ],
        ),
      ),
    );
  }
}
