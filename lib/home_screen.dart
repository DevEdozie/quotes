import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotes/random_quote_generator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RandomQuoteGenerator();
  }
}
