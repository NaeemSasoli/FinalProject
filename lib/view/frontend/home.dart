import 'package:flutter/material.dart';
import 'package:futurefound/view/frontend/careerdatial.dart';
import 'package:get/get.dart';

// Colors and constants
const Color primaryColor = Colors.deepPurple;
const double defaultPadding = 16.0;
const double defaultRadius = 12.0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final List<Map<String, dynamic>> _careerData = [
    {
      'title': 'Software Engineer',
      'icon': Icons.code,
      'color': Colors.deepPurple,
      'description': 'Build and maintain applications and systems.',
      'skills': ['Programming', 'Data Structures', 'Problem Solving'],
    },
    {
      'title': 'Data Scientist',
      'icon': Icons.show_chart,
      'color': Colors.blue,
      'description': 'Analyze and interpret complex data to help decisions.',
      'skills': ['Python', 'Statistics', 'Machine Learning'],
    },
    {
      'title': 'UX Designer',
      'icon': Icons.design_services,
      'color': Colors.pink,
      'description': 'Design user interfaces that are intuitive and engaging.',
      'skills': ['Wireframing', 'Figma', 'User Research'],
    },
    {
      'title': 'Project Manager',
      'icon': Icons.assignment,
      'color': Colors.green,
      'description': 'Oversee and guide projects from start to finish.',
      'skills': ['Leadership', 'Scheduling', 'Communication'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('FutureFound'),
        backgroundColor: primaryColor,
        elevation: 4,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recommended Careers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _careerData.length,
                itemBuilder: (context, index) {
                  final career = _careerData[index];
                  return GestureDetector(
                    onTap: () => Get.to(() => CareerDetailPage(
                          title: career['title'],
                          icon: career['icon'],
                          color: career['color'],
                        )),
                    child: CareerCard(
                      title: career['title'],
                      icon: career['icon'],
                      color: career['color'],
                      description: career['description'],
                      skills: career['skills'],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CareerCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String description;
  final List<String> skills;

  const CareerCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.description,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 40, color: color),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(height: 8),
          Text(
            'Skills: ${skills.join(', ')}',
            style: TextStyle(fontSize: 13, color: color.withOpacity(0.9)),
          ),
        ],
      ),
    );
  }
}
