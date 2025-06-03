import 'package:get/get.dart';
import '../view/frontend/welcome_page.dart';
import '../view/frontend/login_page.dart';
import '../view/frontend/signup_page.dart';
import '../view/frontend/home.dart';
import '../view/frontend/coursepage.dart';
import '../view/frontend/career_page.dart';
import '../view/frontend/profile_page.dart';
import '../view/frontend/homenav.dart';

class AppPages {
  static final routes = [
    GetPage(name: '/welcome', page: () =>  WelcomePage()),
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/signup', page: () => SignUpPage()),
    GetPage(name: '/home', page: () => const HomePage()),
    GetPage(name: '/career', page: () => const CareerPage()),
    GetPage(name: '/profile', page: () => ProfilePage()),
    GetPage(name: '/courses', page: () => const CoursePage()),
    GetPage(name: '/nav', page: () => const MainHomeWrapper()),
  ];
}
