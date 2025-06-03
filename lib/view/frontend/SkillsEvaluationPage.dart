import 'package:flutter/material.dart';
import '../../../utility/colors.dart';

class SkillsEvaluationPage extends StatelessWidget {
  const SkillsEvaluationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills Evaluation'),
        backgroundColor: AppColors.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('Evaluate the following skills (rate from 1–5):', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Text('- Problem Solving'),
          Text('- Communication'),
          Text('- Leadership'),
          Text('- Time Management'),
          Text('- Teamwork'),
        ],
      ),
    );
  }
}
