import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'seventh_page.dart';
class FifthPage extends StatefulWidget {
  const FifthPage({super.key});

  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  final TextEditingController _controller = TextEditingController();
  String _message = '';
  final String correctAnswer = 'Tau Beta Pi'; // Define the correct answer here
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void _checkAnswer() {
    setState(() {
      if (_controller.text.trim().toLowerCase() == correctAnswer.toLowerCase()) {
        _message = 'Correct!';
        _confettiController.play();
      } else {
        _message = 'Try again!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patrick F Taylor Scavenger Hunt'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Here is the Hall of Distinction! This is where we honor our alumni who have made significant contributions to the engineering field. In the middle of the Hall of Distinction there is a small obelisk. What are the first three words written on that obelisk?',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your Answer',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _checkAnswer,
                  child: const Text('Submit'),
                ),
                const SizedBox(height: 20),
                Text(
                  _message,
                  style: TextStyle(fontSize: 24, color: _message == 'Correct!' ? Colors.green : Colors.red),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.75, // 75% of the screen height
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive, // Spread in all directions
                emissionFrequency: 0.05,
                numberOfParticles: 20,
                gravity: 0.1,
              ),
            ),
          ),
          if (_message == 'Correct!') Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SeventhPage()), // Replace with your next page
                  );
                },
                child: const Text('Next'),
              ),
            ),
        ],
      ),
    );
  }
}