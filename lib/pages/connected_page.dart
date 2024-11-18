import 'package:flutter/material.dart';

class ConnectedPage extends StatelessWidget {
  const ConnectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Connected')),
      body: const Center(
        child: Text(
          'You are connected to the internet!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
