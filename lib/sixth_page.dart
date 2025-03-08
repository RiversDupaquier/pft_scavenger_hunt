import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

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
              'Up Ahead from the Commons is the Hall of Distinction and to the right is the Cambre Atrium. Where do you want to go next?',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}