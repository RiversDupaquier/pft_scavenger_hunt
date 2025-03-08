import 'package:flutter/material.dart';

class SeventhPage extends StatefulWidget {
  const SeventhPage({super.key});

  @override
  _SeventhPageState createState() => _SeventhPageState();
}

class _SeventhPageState extends State<SeventhPage> {
  String? _selectedOption;
  final List<String> _options = ['2', '4', '0', '1', '3']; // Define your options here

  void _checkAnswer() {
    if (_selectedOption == '3') { // Replace '3' with the correct answer
      // Handle correct answer
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Correct!'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      // Handle incorrect answer
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Try again!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

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
              'Keeping straight ahead, we arrive at the Capstone Gallery. I will not lie, I am not sure of the significance of the Capstone Gallery. But they have stairs! Some really big wooden stairs. On these wooden stairs, there are charging sockets. How many sockets are on the first level of stairs?',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: _selectedOption,
              hint: const Text('Select an option'),
              items: _options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _selectedOption == null ? null : _checkAnswer,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}