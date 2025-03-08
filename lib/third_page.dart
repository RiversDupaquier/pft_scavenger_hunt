import 'package:flutter/material.dart';
import 'fourth_page.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String _message = '';
  IconData? _icon;
  List<bool> _isOptionDisabled = [false, false, false, false];
  List<String> _buttonTexts = ['Dejana Fito', 'Tiffany Myers', 'Maria Manoel', 'Giorno Giovanna'];

  void _handleOption(int index, bool isCorrect) {
    setState(() {
      if (isCorrect) {
        _message = 'Good Job!';
        _icon = Icons.thumb_up;
        _isOptionDisabled = [true, true, true, true];
      } else {
        _isOptionDisabled[index] = true;
        _buttonTexts[index] = 'Wrong!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patrick F Taylor Scavenger Hunt'),
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'For our first stop, we will be visiting The Commons area of PFT. This is a great place to study, hang out with friends, or even grab a bite to eat! In The Commons, PFT has their own Panera Bread. Can you tell me the name of the general manager of Panera Bread in The Commons?',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _isOptionDisabled[0] ? null : () => _handleOption(0, false),
                  child: Text(_buttonTexts[0]),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _isOptionDisabled[1] ? null : () => _handleOption(1, true),
                  child: Text(_buttonTexts[1]),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _isOptionDisabled[2] ? null : () => _handleOption(2, false),
                  child: Text(_buttonTexts[2]),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _isOptionDisabled[3] ? null : () => _handleOption(3, false),
                  child: Text(_buttonTexts[3]),
                ),
                const SizedBox(height: 20),
                if (_message.isNotEmpty) ...[
                  Text(
                    _message,
                    style: TextStyle(fontSize: 24, color: _icon == Icons.close ? Colors.red : Colors.green),
                  ),
                  if (_icon != null) Icon(_icon, size: 50, color: _icon == Icons.close ? Colors.red : Colors.green),
                ],
              ],
            ),
            if (_message == 'Good Job!') Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FourthPage()), // Replace with your next page
                  );
                },
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}