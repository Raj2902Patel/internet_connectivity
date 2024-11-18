import 'package:flutter/material.dart';
import 'package:internet_connectivity/pages/connection_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet Connection Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ConnectionWrapper(),
    );
  }
}
