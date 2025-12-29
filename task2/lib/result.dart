import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final TextEditingController _idController = TextEditingController();
  bool _showResult = false;

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }

  void _onShowResult() {
    setState(() {
      _showResult = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          TextField(
            controller: _idController,
            decoration: const InputDecoration(
              labelText: 'Enter Your ID',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _onShowResult,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Text('Show Result'),
            ),
          ),
          const SizedBox(height: 16),
          if (_showResult) ...[
            const Text('Trimester 231: 3.84', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const Text('Trimester 232: 3.85', style: TextStyle(fontSize: 16)),
          ]
        ],
      ),
    );
  }
}
