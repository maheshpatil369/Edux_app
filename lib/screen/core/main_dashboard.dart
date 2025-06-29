import 'package:flutter/material.dart';
import 'package:edux_app/widgets/custom_header.dart'; // ✅ Make sure path is correct
import 'package:edux_app/widgets/custom_footer.dart'; // ✅ Make sure path is correct

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
            dashboardButton(context, '/profile_form', "Open Profile Form", buttonStyle),
            dashboardButton(context, '/course_suggestions', "View Course Suggestions", buttonStyle),
            dashboardButton(context, '/skill_gap_analysis', "Analyze Skill Gaps", buttonStyle),

            sectionTitle("Career Simulation"),
            dashboardButton(context, '/career_simulation', "Career Path Simulation", buttonStyle),
            dashboardButton(context, '/update_profile', "Update Career Profile", buttonStyle),

            sectionTitle("College Shortlisting"),
            dashboardButton(context, '/college_filter', "Filter Colleges", buttonStyle),
            dashboardButton(context, '/college_list', "View College List", buttonStyle),
            dashboardButton(context, '/college_detail', "College Details", buttonStyle),
            dashboardButton(context, '/admission_probability', "Admission Probability", buttonStyle),
            dashboardButton(context, '/application_deadlines', "Application Deadlines", buttonStyle),

            sectionTitle("Resume & SOP Tools"),
            dashboardButton(context, '/resume_builder', "Build Resume", buttonStyle),
            dashboardButton(context, '/ats_preview', "ATS Preview", buttonStyle),
            dashboardButton(context, '/template_selector', "Select Template", buttonStyle),
            dashboardButton(context, '/sop_editor', "Edit SOP", buttonStyle),
            dashboardButton(context, '/sop_feedback', "SOP Feedback History", buttonStyle),

            sectionTitle("Application Tracker"),
            dashboardButton(context, '/document_checklist', "Document Checklist", buttonStyle),
            dashboardButton(context, '/application_status', "Application Status Tracker", buttonStyle),
            dashboardButton(context, '/interview_tips', "Interview Preparation Tips", buttonStyle),
            dashboardButton(context, '/mentor_collaboration', "Mentor Collaboration", buttonStyle),

            sectionTitle("Scholarship & Financial"),
            dashboardButton(context, '/scholarship_match', "Scholarship Matches", buttonStyle),
            dashboardButton(context, '/scholarship_detail', "Scholarship Details", buttonStyle),
            dashboardButton(context, '/reminder_settings', "Reminder Settings", buttonStyle),
            dashboardButton(context, '/financial_estimator', "Financial Estimator", buttonStyle),
            dashboardButton(context, '/loan_calculator', "Loan Calculator", buttonStyle),

            sectionTitle("Test Prep (GRE/TOEFL)"),
            dashboardButton(context, '/study_planner', "Study Planner", buttonStyle),
            dashboardButton(context, '/mock_test_results', "Mock Test Results", buttonStyle),
            dashboardButton(context, '/peer_group_finder', "Find Peer Group", buttonStyle),

            sectionTitle("Notifications & Settings"),
            dashboardButton(context, '/notifications', "Notification Center", buttonStyle),
            dashboardButton(context, '/user_profile', "User Profile", buttonStyle),
            dashboardButton(context, '/settings', "Settings", buttonStyle),
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

  Widget dashboardButton(BuildContext context, String route, String label, ButtonStyle style) {
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
