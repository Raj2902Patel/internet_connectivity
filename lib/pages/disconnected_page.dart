import 'package:flutter/material.dart';

class DisConnectedPage extends StatelessWidget {
  const DisConnectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.wifi_off,
              size: 50,
              color: Colors.red,
            ),
            SizedBox(height: 15),
            Text(
              'You are not connected to the internet',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
