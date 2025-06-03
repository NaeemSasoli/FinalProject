import 'package:flutter/material.dart';
import 'package:futurefound/view/frontend/coursedetailpage.dart';
import 'package:get/get.dart';
import '../../utility/colors.dart';
import '../../utility/constants.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  static final List<Map<String, String>> _courses = [
    {
      'title': 'Flutter Development',
      'description': 'Learn to build apps with Flutter.',
    },
    {
      'title': 'Data Science Basics',
      'description': 'Introduction to data analysis.',
    },
    {
      'title': 'UX Design Principles',
      'description': 'Design user-friendly interfaces.',
    },
    {
      'title': 'Project Management',
      'description': 'Manage projects effectively.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: ListView.separated(
          itemCount: _courses.length,
          separatorBuilder: (_, __) => const SizedBox(height: 15),
          itemBuilder: (context, index) {
            final course = _courses[index];
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
                title: Text(
                  course['title']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(course['description']!),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.to(() => CourseDetailPage(
                        title: course['title']!,
                        description: course['description']!,
                      ));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
