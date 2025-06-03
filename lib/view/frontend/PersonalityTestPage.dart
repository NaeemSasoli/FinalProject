import 'package:flutter/material.dart';
import '../../../utility/colors.dart';

class PersonalityTestPage extends StatelessWidget {
  const PersonalityTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personality Test'),
        backgroundColor: AppColors.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            '1. You enjoy social gatherings.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text('2. You prefer detailed plans over spontaneity.'),
          SizedBox(height: 10),
          Text('3. You are energized by spending time alone.'),
          SizedBox(height: 20),
          Text('Answer with Yes / No or on a scale of 1–5.'),
        ],
      ),
    );
  }
}
