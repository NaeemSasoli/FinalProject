import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth_controller.dart';
import '../../utility/colors.dart';
import '../../utility/constants.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
        child: Obx(() => Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.secondary,
                  child: Text(
                    _authController.user.value?.name.substring(0, 1).toUpperCase() ?? 'U',
                    style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  _authController.user.value?.name ?? 'User Name',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(_authController.user.value?.email ?? 'user@email.com'),
                const SizedBox(height: 30),
                ListTile(
                  leading: Icon(Icons.settings, color: AppColors.primary),
                  title: const Text('Account Settings'),
                  onTap: () {
                    // Add Account Settings navigation or logic here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.history, color: AppColors.primary),
                  title: const Text('Assessment History'),
                  onTap: () {
                    // Add Assessment History navigation or logic here
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    _authController.logout(); // Call the logout method correctly
                    Get.offAllNamed('/login'); // Navigate after logout, replace current routes
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('Logout'),
                ),
              ],
            )),
      ),
    );
  }
}
