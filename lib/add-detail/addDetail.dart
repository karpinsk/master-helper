import 'package:flutter/material.dart';

class AddDetailScreen extends StatelessWidget {
  const AddDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Добавление детали')),
      body: const Center(
        child: Text(
          'This is the Add Detail Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
