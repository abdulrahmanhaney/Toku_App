import 'package:flutter/material.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  static String id = 'PhrasesScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phrases')),
    );
  }
}
