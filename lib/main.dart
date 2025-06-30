import 'package:flutter/material.dart';

// Import all screens
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

import 'screen/resume_sop/resume_builder_page.dart';
import 'screen/resume_sop/ats_preview_page.dart';
import 'screen/resume_sop/template_selector_page.dart';
import 'screen/resume_sop/sop_editor_page.dart';
import 'screen/resume_sop/sop_feedback_history_page.dart';

import 'screen/application_tracker/document_checklist_page.dart';
import 'screen/application_tracker/application_status_tracker_page.dart';
import 'screen/application_tracker/interview_preparation_tips_page.dart';
import 'screen/application_tracker/mentor_collaboration_page.dart';

import 'screen/scholarship/scholarship_matching_page.dart';
import 'screen/scholarship/scholarship_detail_page.dart';
import 'screen/scholarship/reminder_settings_page.dart';
import 'screen/scholarship/financial_estimator_page.dart';
import 'screen/scholarship/loan_calculator_page.dart';

import 'screen/test_prep/study_planner_page.dart';
import 'screen/test_prep/mock_test_result_page.dart';
import 'screen/test_prep/peer_group_finder_page.dart';

import 'screen/notifications/notification_center_page.dart';
import 'screen/notifications/user_profile_page.dart';
import 'screen/notifications/settings_page.dart';

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
      initialRoute: '/dashboard', // You can switch to '/' for splash
      routes: {
        '/': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/dashboard': (context) => const MainDashboard(),

        // 🔹 AI & Course Recommendation
        '/profile_form': (context) => ProfileFormPage(), // ✅ removed const
        '/course_suggestions': (context) => CourseSuggestionsPage(), // ✅ removed const
        '/skill_gap_analysis': (context) => SkillGapAnalysisPage(), // ✅ removed const

        // 🔹 Career Simulation
        '/career_simulation': (context) => const CareerPathSimulationPage(),
        '/update_profile': (context) => const UpdateProfilePage(),

        // 🔹 College Shortlisting
        '/college_filter': (context) => const CollegeFilterPage(),
        '/college_list': (context) => const CollegeListViewPage(),
        '/college_detail': (context) => const CollegeDetailPage(),
        '/admission_probability': (context) => const AdmissionProbabilityPage(),
        '/application_deadlines': (context) => const ApplicationDeadlineCalendarPage(),

        // 🔹 Resume & SOP Tools
        '/resume_builder': (context) => const ResumeBuilderPage(),
        '/ats_preview': (context) => const ATSPreviewPage(),
        '/template_selector': (context) => const TemplateSelectorPage(),
        '/sop_editor': (context) => const SOPEditorPage(),
        '/sop_feedback': (context) => const SOPFeedbackHistoryPage(),

        // 🔹 Application Tracker
        '/document_checklist': (context) => const DocumentChecklistPage(),
        '/application_status': (context) => const ApplicationStatusTrackerPage(),
        '/interview_tips': (context) => const InterviewPreparationTipsPage(),
        '/mentor_collaboration': (context) => const MentorCollaborationPage(),

        // 🔹 Scholarship & Financial
        '/scholarship_match': (context) => const ScholarshipMatchingPage(),
        '/scholarship_detail': (context) => const ScholarshipDetailPage(),
        '/reminder_settings': (context) => const ReminderSettingsPage(),
        '/financial_estimator': (context) => const FinancialEstimatorPage(),
        '/loan_calculator': (context) => const LoanCalculatorPage(),

        // 🔹 Test Prep (GRE/TOEFL)
        '/study_planner': (context) => const StudyPlannerPage(),
        '/mock_test_results': (context) => const MockTestResultPage(),
        '/peer_group_finder': (context) => const PeerGroupFinderPage(),

        // 🔔 Notifications & Settings
        '/notifications': (context) => const NotificationCenterPage(),
        '/user_profile': (context) => const UserProfilePage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
