import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utility/colors.dart';
import '../../utility/constants.dart';

class CourseBuyPage extends StatelessWidget {
  final String courseTitle;
  const CourseBuyPage({super.key, required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy "$courseTitle"'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          children: [
            const Icon(Icons.shopping_cart, size: 100, color: AppColors.primary),
            const SizedBox(height: 30),
            Text(
              'Price: \$49.99',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Text(
              'Secure checkout with your preferred payment method.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.snackbar('Purchase Successful',
                    'Thank you for buying "$courseTitle" course!',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: AppColors.primary.withOpacity(0.8),
                    colorText: Colors.white);
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(vertical: 16),
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
                ),
              ),
              child: const Text(
                'Confirm Purchase',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
