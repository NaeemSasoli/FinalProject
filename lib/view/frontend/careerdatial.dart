import 'package:flutter/material.dart';

class CareerDetailPage extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const CareerDetailPage({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Icon(icon, size: 80, color: color),
            const SizedBox(height: 24),
            Text(
              title,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'This page can include detailed information about the career such as:\n\n'
              '- Required skills\n'
              '- Educational paths\n'
              '- Typical salary\n'
              '- Career growth outlook\n'
              '- Tips and resources',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
