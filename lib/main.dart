import 'package:flutter/material.dart';
import 'package:quotes/home_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quotes",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: const HomeScreen(),
    ),
  ));
}
