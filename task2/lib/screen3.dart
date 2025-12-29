import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  final TextEditingController _idController = TextEditingController();
  bool _showCourses = false;

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }

  void _onShowCourses() {
    setState(() {
      _showCourses = true;
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
            onPressed: _onShowCourses,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Text('Show Courses'),
            ),
          ),
          const SizedBox(height: 16),
          if (_showCourses) ...[
            const Text('CSE311: Database Systems', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const Text('CSE322: Operating Systems', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const Text('CSE327: Software Engineering', style: TextStyle(fontSize: 16)),
          ]
        ],
      ),
    );
  }
}
