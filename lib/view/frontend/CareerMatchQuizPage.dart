import 'package:flutter/material.dart';
import '../../../utility/colors.dart';

class CareerMatchQuizPage extends StatelessWidget {
  const CareerMatchQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Career Match Quiz'),
        backgroundColor: AppColors.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Take this quick quiz to discover suitable careers:',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text('1. Do you enjoy working with numbers or people?'),
          SizedBox(height: 10),
          Text('2. Do you prefer creative tasks or logical tasks?'),
          SizedBox(height: 10),
          Text('3. What subjects do you enjoy the most?'),
        ],
      ),
    );
  }
}
