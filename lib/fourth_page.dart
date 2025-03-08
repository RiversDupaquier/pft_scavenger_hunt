import 'package:flutter/material.dart';
import 'fifth_page.dart';
import 'sixth_page.dart';
class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

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
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FifthPage()),
                );
              },
              child: const Text("Got to Hall of Distinction"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SixthPage()),
                );
              },
              child: const Text("Got to Cambre Atrium"),
            ),
          ],
        ),
      ),
    );
  }
}