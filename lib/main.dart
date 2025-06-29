import 'package:flutter/material.dart';

import 'screen/core/splash_screen.dart';
import 'screen/auth/welcome_screen.dart';
import 'screen/auth/login_screen.dart';
import 'screen/auth/signup_screen.dart';
import 'screen/core/main_dashboard.dart';

import 'screen/ai_course/profile_form_page.dart';
import 'screen/ai_course/course_suggestions_page.dart';
import 'screen/ai_course/skill_gap_analysis_page.dart';

import 'screen/career_simulation/career_path_simulation_page.dart';
import 'screen/career_simulation/update_profile_page.dart';

import 'screen/college_shortlisting/college_filter_page.dart';
import 'screen/college_shortlisting/college_list_view_page.dart';
import 'screen/college_shortlisting/college_detail_page.dart';
import 'screen/college_shortlisting/admission_probability_page.dart';
import 'screen/college_shortlisting/application_deadline_calendar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edux App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/dashboard': (context) => const MainDashboard(),

        // 🔹 AI & Course Recommendation
        '/profile_form': (context) => const ProfileFormPage(),
        '/course_suggestions': (context) => const CourseSuggestionsPage(),
        '/skill_gap_analysis': (context) => const SkillGapAnalysisPage(),

        // 🔹 Career Simulation
        '/career_simulation': (context) => const CareerPathSimulationPage(),
        '/update_profile': (context) => const UpdateProfilePage(),

        // 🔹 College Shortlisting
        '/college_filter': (context) => const CollegeFilterPage(),
        '/college_list': (context) => const CollegeListViewPage(),
        '/college_detail': (context) => const CollegeDetailPage(),
        '/admission_probability': (context) => const AdmissionProbabilityPage(),
        '/application_deadlines': (context) => const ApplicationDeadlineCalendarPage(),
      },
    );
  }
}
