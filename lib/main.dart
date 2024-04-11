import 'package:flutter/material.dart';
import 'package:monalisa/artwork.dart';

void main() {
  runApp(const MusemApp());
}

class MusemApp extends StatelessWidget {
  const MusemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Museum',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const ScaffoldExample()
    );
  }
}
