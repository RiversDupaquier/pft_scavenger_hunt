import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patrick F Taylor Scavenger Hunt'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Great! Let\'s begin!',
              style: TextStyle(fontSize: 24),
            ),
              ],
        ),
      ),
    );
  }
}