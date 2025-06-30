import 'package:flutter/material.dart';
import 'package:edux_app/widgets/custom_header.dart';
import 'package:edux_app/widgets/custom_footer.dart';

import '../resume_sop/resume_builder_page.dart';
import '../college_shortlisting/college_list_view_page.dart';
import '../notifications/user_profile_page.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int _selectedIndex = 0;

  final List<String> _titles = [
    'Dashboard',
    'College List',
    'Resume Builder',
    'User Profile',
  ];

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.addAll([
      DashboardContent(onTabSwitch: _onTabSelected),
      const CollegeListViewPage(),
      const ResumeBuilderPage(),
      const UserProfilePage(),
    ]);
  }

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(title: _titles[_selectedIndex]),
      bottomNavigationBar: CustomFooter(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}

class DashboardContent extends StatelessWidget {
  final Function(int) onTabSwitch;

  const DashboardContent({Key? key, required this.onTabSwitch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16),
    );

    return Padding(
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
          dashboardButton(context, '', "View College List", buttonStyle, tabIndex: 1),

          sectionTitle("Resume & SOP Tools"),
          dashboardButton(context, '', "Build Resume", buttonStyle, tabIndex: 2),
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
          dashboardButton(context, '', "User Profile", buttonStyle, tabIndex: 3),
          dashboardButton(context, '/settings', "Settings", buttonStyle),
        ],
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

  Widget dashboardButton(BuildContext context, String? route, String label, ButtonStyle style, {int? tabIndex}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: () {
          if (tabIndex != null) {
            onTabSwitch(tabIndex);
          } else {
            Navigator.pushNamed(context, route!);
          }
        },
        style: style,
        child: Text(label),
      ),
    );
  }
}
