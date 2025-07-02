import 'package:flutter/material.dart';
import 'package:edux_app/widgets/custom_header.dart';
import 'package:edux_app/widgets/custom_footer.dart';
import 'package:edux_app/widgets/assistant_floating_button.dart';

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

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      DashboardContent(onTabSwitch: _onTabSelected),
      const CollegeListViewPage(),
      const ResumeBuilderPage(),
      const UserProfilePage(),
    ];
  }

  void _onTabSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(title: _titles[_selectedIndex]),
      bottomNavigationBar: CustomFooter(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
      ),
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: _pages,
          ),
          const AssistantFloatingButton(), // 🟣 Floating Chat Assistant
        ],
      ),
    );
  }
}

class DashboardContent extends StatelessWidget {
  final Function(int) onTabSwitch;

  const DashboardContent({Key? key, required this.onTabSwitch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          _welcomeCard(),
          const SizedBox(height: 16),
          _progressCard(title: 'Resume', percent: 0.8),
          const SizedBox(height: 12),
          _progressCard(title: '3 colleges shortlisted', percent: 0.6),
          const SizedBox(height: 12),
          _tipCard(),
          const SizedBox(height: 24),

          sectionTitle("Quick Access"),
          dashboardButton(context, '/profile_form', "Open Profile Form"),
          dashboardButton(context, '/course_suggestions', "View Course Suggestions"),
          dashboardButton(context, null, "Go to College List", tabIndex: 1),
          dashboardButton(context, null, "Build Resume", tabIndex: 2),
          dashboardButton(context, null, "User Profile", tabIndex: 3),
        ],
      ),
    );
  }

  Widget _welcomeCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: const [
          Icon(Icons.school, color: Colors.white, size: 48),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              'Welcome back!',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Widget _progressCard({required String title, required double percent}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFE9EEFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  color: Color(0xFF2D3A8C),
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: percent,
            backgroundColor: Colors.white,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget _tipCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFDDE6FF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          Icon(Icons.lightbulb_outline, color: Colors.deepPurple),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("AI Tip",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Stay updated with new skills insights"),
              ],
            ),
          )
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

  Widget dashboardButton(BuildContext context, String? route, String label, {int? tabIndex}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.deepPurple.shade50,
          foregroundColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          if (tabIndex != null) {
            onTabSwitch(tabIndex);
          } else if (route != null) {
            Navigator.pushNamed(context, route);
          }
        },
        child: Text(label),
      ),
    );
  }
}
