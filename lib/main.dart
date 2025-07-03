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
      initialRoute: '/',
      onGenerateRoute: (settings) {
        // Custom handling of named routes with push
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (context) => const SplashScreen();
            break;
          case '/welcome':
            builder = (context) => const WelcomeScreen();
            break;
          case '/login':
            builder = (context) => const LoginScreen();
            break;
          case '/signup':
            builder = (context) => const SignupScreen();
            break;
          case '/dashboard':
            builder = (context) => const MainDashboard();
            break;

        // AI & Course Recommendation
          case '/profile_form':
            builder = (context) => ProfileFormPage();
            break;
          case '/course_suggestions':
            builder = (context) => CourseSuggestionsPage();
            break;
          case '/skill_gap_analysis':
            builder = (context) => SkillGapAnalysisPage();
            break;

        // Career Simulation
          case '/career_simulation':
            builder = (context) => const CareerPathSimulationPage();
            break;
          case '/update_profile':
            builder = (context) => const UpdateProfilePage();
            break;

        // College Shortlisting
          case '/college_filter':
            builder = (context) => const CollegeFilterPage();
            break;
          case '/college_list':
            builder = (context) => const CollegeListViewPage();
            break;
          case '/college_detail':
            builder = (context) => const CollegeDetailPage();
            break;
          case '/admission_probability':
            builder = (context) => const AdmissionProbabilityPage();
            break;
          case '/application_deadlines':
            builder = (context) => const ApplicationDeadlineCalendarPage();
            break;

        // Resume & SOP Tools
          case '/resume_builder':
            builder = (context) => const ResumeBuilderPage();
            break;
          case '/ats_preview':
            builder = (context) => const ATSPreviewPage();
            break;
          case '/template_selector':
            builder = (context) => const TemplateSelectorPage();
            break;
          case '/sop_editor':
            builder = (context) => const SOPEditorPage();
            break;
          case '/sop_feedback':
            builder = (context) => const SOPFeedbackHistoryPage();
            break;
  
        // Application Tracker
          case '/document_checklist':
            builder = (context) => const DocumentChecklistPage();
            break;
          case '/application_status':
            builder = (context) => const ApplicationStatusTrackerPage();
            break;
          case '/interview_tips':
            builder = (context) => const InterviewPreparationTipsPage();
            break;
          case '/mentor_collaboration':
            builder = (context) => const MentorCollaborationPage();
            break;

        // Scholarship & Financial
          case '/scholarship_match':
            builder = (context) => const ScholarshipMatchingPage();
            break;
          case '/scholarship_detail':
            builder = (context) => const ScholarshipDetailPage();
            break;
          case '/reminder_settings':
            builder = (context) => const ReminderSettingsPage();
            break;
          case '/financial_estimator':
            builder = (context) => const FinancialEstimatorPage();
            break;
          case '/loan_calculator':
            builder = (context) => const LoanCalculatorPage();
            break;

        // Test Prep
          case '/study_planner':
            builder = (context) => const StudyPlannerPage();
            break;
          case '/mock_test_results':
            builder = (context) => const MockTestResultPage();
            break;
          case '/peer_group_finder':
            builder = (context) => const PeerGroupFinderPage();
            break;

        // Notifications & Settings
          case '/notifications':
            builder = (context) => const NotificationCenterPage();
            break;
          case '/user_profile':
            builder = (context) => const UserProfilePage();
            break;
          case '/settings':
            builder = (context) => const SettingsPage();
            break;

          default:
            throw Exception('Route not found: \${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
