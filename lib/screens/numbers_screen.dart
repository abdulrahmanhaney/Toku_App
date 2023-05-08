import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  static String id = 'NumbersScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Numbers')),
    );
  }
}
