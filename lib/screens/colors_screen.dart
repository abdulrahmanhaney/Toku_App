import 'package:flutter/material.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  static String id = 'ColorsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colors')),
    );
  }
}
