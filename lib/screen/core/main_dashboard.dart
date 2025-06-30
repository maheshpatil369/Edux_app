import 'package:flutter/material.dart';
import 'package:edux_app/widgets/custom_header.dart';
import 'package:edux_app/widgets/custom_footer.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() => _selectedIndex = index);

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/dashboard');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/college_list');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/resume_builder');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/user_profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16),
    );

    return Scaffold(
      appBar: const CustomHeader(title: 'EduX Dashboard'),
      bottomNavigationBar: CustomFooter(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            sectionTitle("AI & Course Recommendation"),
            dashboardButton('/profile_form', "Open Profile Form", buttonStyle),
            dashboardButton('/course_suggestions', "View Course Suggestions", buttonStyle),
            dashboardButton('/skill_gap_analysis', "Analyze Skill Gaps", buttonStyle),

            sectionTitle("Career Simulation"),
            dashboardButton('/career_simulation', "Career Path Simulation", buttonStyle),
            dashboardButton('/update_profile', "Update Career Profile", buttonStyle),

            sectionTitle("College Shortlisting"),
            dashboardButton('/college_filter', "Filter Colleges", buttonStyle),
            dashboardButton('/college_list', "View College List", buttonStyle),
            dashboardButton('/college_detail', "College Details", buttonStyle),
            dashboardButton('/admission_probability', "Admission Probability", buttonStyle),
            dashboardButton('/application_deadlines', "Application Deadlines", buttonStyle),

            sectionTitle("Resume & SOP Tools"),
            dashboardButton('/resume_builder', "Build Resume", buttonStyle),
            dashboardButton('/ats_preview', "ATS Preview", buttonStyle),
            dashboardButton('/template_selector', "Select Template", buttonStyle),
            dashboardButton('/sop_editor', "Edit SOP", buttonStyle),
            dashboardButton('/sop_feedback', "SOP Feedback History", buttonStyle),

            sectionTitle("Application Tracker"),
            dashboardButton('/document_checklist', "Document Checklist", buttonStyle),
            dashboardButton('/application_status', "Application Status Tracker", buttonStyle),
            dashboardButton('/interview_tips', "Interview Preparation Tips", buttonStyle),
            dashboardButton('/mentor_collaboration', "Mentor Collaboration", buttonStyle),

            sectionTitle("Scholarship & Financial"),
            dashboardButton('/scholarship_match', "Scholarship Matches", buttonStyle),
            dashboardButton('/scholarship_detail', "Scholarship Details", buttonStyle),
            dashboardButton('/reminder_settings', "Reminder Settings", buttonStyle),
            dashboardButton('/financial_estimator', "Financial Estimator", buttonStyle),
            dashboardButton('/loan_calculator', "Loan Calculator", buttonStyle),

            sectionTitle("Test Prep (GRE/TOEFL)"),
            dashboardButton('/study_planner', "Study Planner", buttonStyle),
            dashboardButton('/mock_test_results', "Mock Test Results", buttonStyle),
            dashboardButton('/peer_group_finder', "Find Peer Group", buttonStyle),

            sectionTitle("Notifications & Settings"),
            dashboardButton('/notifications', "Notification Center", buttonStyle),
            dashboardButton('/user_profile', "User Profile", buttonStyle),
            dashboardButton('/settings', "Settings", buttonStyle),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
  );

  Widget dashboardButton(String route, String label, ButtonStyle style) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, route),
        style: style,
        child: Text(label),
      ),
    );
  }
}
