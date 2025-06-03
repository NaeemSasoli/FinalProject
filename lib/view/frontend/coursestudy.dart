import 'package:flutter/material.dart';
import '../../utility/colors.dart';
import '../../utility/constants.dart';

class CourseStudyPage extends StatelessWidget {
  final String courseTitle;
  const CourseStudyPage({super.key, required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study "$courseTitle"'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              courseTitle,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to your course study area.\n\n'
              'Here you will find all lessons, videos, quizzes, and projects to help you learn.',
              style: TextStyle(fontSize: 18),
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                // For demo, just show a snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Next lesson coming soon!')),
                );
              },
              icon: const Icon(Icons.play_arrow),
              label: const Text('Start Lesson'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(vertical: 16),
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
