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
          IndexedStack(index: _selectedIndex, children: _pages),
          const AssistantFloatingButton(),
        ],
      ),
    );
  }
}

class DashboardContent extends StatelessWidget {
  final Function(int) onTabSwitch;

  const DashboardContent({Key? key, required this.onTabSwitch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _welcomeCard(),
        const SizedBox(height: 16),
        _progressCard(title: 'Resume', percent: 0.8),
        const SizedBox(height: 12),
        _tipCard(),
        const SizedBox(height: 24),
        sectionTitle("Quick Access"),
        dashboardButton(context, '/profile_form', "Open Profile Form", icon: Icons.person),
        dashboardButton(context, '/course_suggestions', "View Course Suggestions", icon: Icons.menu_book),
        dashboardButton(context, null, "Go to College List", icon: Icons.school, tabIndex: 1),
        dashboardButton(context, null, "Build Resume", icon: Icons.edit, tabIndex: 2),
      ],
    );
  }

  Widget _welcomeCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF6A5AE0), Color(0xFF5146D4)],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(Icons.rocket_launch, color: Colors.white, size: 48),
          const SizedBox(width: 16),
          const Expanded(
            child: Text(
              'Hi, Mahesh 👋\nReady to plan your academic journey?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.deepPurple),
          )
        ],
      ),
    );
  }

  Widget _progressCard({required String title, required double percent}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE9EEFF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF2D3A8C),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: percent,
                  backgroundColor: Colors.white,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(width: 8),
              Text('${(percent * 100).toInt()}% complete'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tipCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFDDE6FF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: const [
          Icon(Icons.lightbulb_outline, color: Colors.deepPurple, size: 28),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("AI Tip", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Stay updated with new skills insights"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget sectionTitle(String title) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
  );

  Widget dashboardButton(
      BuildContext context,
      String? route,
      String label, {
        int? tabIndex,
        IconData icon = Icons.arrow_forward_ios,
      }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.withOpacity(0.08),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          leading: Icon(icon, color: Colors.deepPurple),
          title: Text(label,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            if (tabIndex != null) {
              onTabSwitch(tabIndex);
            } else if (route != null) {
              Navigator.pushNamed(context, route);
            }
          },
        ),
      ),
    );
  }
}
