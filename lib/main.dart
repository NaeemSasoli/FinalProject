import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:futurefound/view/frontend/splash.dart';
import 'package:get/get.dart';

import 'controller/auth_controller.dart';
import 'view/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCLhDhqb4d_S9JUuI7S5ZObWn4YXU-oSYM",
      appId: "1:850438269103:web:26ba8707116c2e6efbcc5a",
      messagingSenderId: "850438269103",
      projectId: "futurefound-550fe",
      // Add these for web:
      authDomain: "futurefound-550fe.firebaseapp.com",
      storageBucket: "futurefound-550fe.firebasestorage.app",
    ),
  );

  // ✅ Register the AuthController globally
  Get.put(AuthController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FutureFound',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Poppins',
      ),
    );
  }
}
